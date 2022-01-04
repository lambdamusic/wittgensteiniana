from django.db import models
from django.contrib import admin
from django.utils.translation import ugettext_lazy as _
from django.conf import settings as django_settings
from django import forms
from django.conf.urls import *

import datetime
import mptt  # check the 'register' call below


import myutils.abstract_models as mymodels
from myutils.myutils import blank_or_string, preview_string
# from myutils.adminextra.autocomplete_tree_admin import *



##################
#  Mon Oct	3 00:25:58 BST 2011
#  MAIN ENTITIES
#
##################


class TextUnit(mymodels.EnhancedModel):
	"""(TextUnit description
		Remember that textUnits are abstract logical units of a text - without the text contents themselves
		
		name = "1.1", or "7"
		number = not used
		description = not used
		hastype = eg Paragraph or Chapter
		
	"""
	name = models.CharField(blank=True, max_length=100, verbose_name="name")
	number = models.IntegerField(blank=True, null=True)
	description = models.TextField(blank=True, verbose_name="description")
	hastype = models.ForeignKey('TextUnitType', blank=True, null="True", on_delete=models.CASCADE)
	hascontents = models.ManyToManyField('TextFragment', blank=True)

	parent =  models.ForeignKey('self', null=True, blank=True, verbose_name="parent", 
			related_name='children', on_delete=models.CASCADE)
		
	class Admin(admin.ModelAdmin):
		readonly_fields=('created_at', 'updated_at')
		list_display = ( 'name', 'parent', 'editedrecord', 'review',)
		filter_horizontal = ('hascontents',) 
		# raw_id_fields = ("hascontents",)
		list_filter = ['updated_at', 'updated_by__username', 'editedrecord', 'review', ] #'parent'
		search_fields = ['id', 'name']
		related_search_fields = { 	'parent': ('name',) }

		def save_model(self, request, obj, form, change):
			"""adds the user information when the rec is saved"""
			if getattr(obj, 'created_by', None) is None:
				  obj.created_by = request.user
			obj.updated_by = request.user
			obj.save()
		#  extending TreeAdmin's _actions_column 

		def _actions_column(self, page):
			actions = super(TextUnit.Admin, self)._actions_column(page)
			actions.insert(0, u'<a href="add/?parent=%s" title="%s"><img src="%simg/admin/icon_addlink.gif" alt="%s"></a>' % (
				page.pk, _('Add child page'), settings.ADMIN_MEDIA_PREFIX , _('Add child page')))
			return actions
			

		fieldsets = [
			('Administration',	
				{'fields':	
					['editedrecord', 'review', 'internal_notes', ('created_by'), 
					# ['editedrecord', 'review', 'internal_notes', ('created_at', 'created_by'), 
					  ('updated_at', 'updated_by')
					 ],	 
				'classes': ['collapse']
				}),
				('Description',			
					{'fields':	
						['name', 'description', 'parent', 'number'	]
					}),
				('Other',			
					{'fields':	
						['hastype', 'hascontents']
					}),

		]


	class Meta:
		verbose_name_plural="TextUnits"
		ordering = ['tree_id', 'name']  # 'lft', 'name', 

	def __nameandparent__(self):
		exit = ""
		if self.parent:
			return "%s (%s)" % (blank_or_string(self.name), blank_or_string(self.parent.name))
		else:
			return blank_or_string(self.name)

	def show_ancestors_tree(self):
		exit = ", ".join([blank_or_string(el.name) for el in self.get_ancestors().reverse()])
		if exit:
			exit = "%s (%s)" % (blank_or_string(self.name), exit)
		else:
			exit = blank_or_string(self.name)
		return exit

	@classmethod
	def tree_top(self):
		"""NOTE this is a substitute for the `tree` method from mptt, 
		which is not implemented correctly according to the latest mptt docs.
		See https://django-mptt.readthedocs.io/en/latest/models.html
		"""
		ll = []
		for x in self.objects.all():
			if x.parent is None:
				ll.append(x)
		return ll


	def tractatus_next(self):
		""" 
		Gets the next Satz in the Tractatus. Either one level down, or a sibling.. 
		Ie we're navigating the tree depth-first, one step at a time.
		
		Test it with:
		
		>>> def r(x):
		...     if x.tractatus_next():
		...         print x.tractatus_next()
		...         r(x.tractatus_next())
		...     else:
		...         print "DONE"
		... 
		>>> t = TextUnit.objects.all()[0]
		>>> r(t)
		.....
		.....
		"""
		a = self.get_children().order_by('name')
		
		def __siblingOrFather(unit):
			""" 
			inner function used for recursion
			"""
			b = unit.get_siblings(True).order_by('name')
			if b:
				position = list(b).index(unit)
				if position < (len(b) - 1):  # if the current item is not last
			 		return b[position + 1] # return next one

			# get the sibling of the father
			ancestors = list(unit.get_ancestors())
			if ancestors:
				return __siblingOrFather(ancestors[-1])  # return the sibling of the father
			else:
				return None
				
		if a: 
			return a[0]
		else:
			return __siblingOrFather(self)
	
	
	
	def tractatus_prev(self):
		""" 
		Gets the prev Satz in the Tractatus. 
		Either one level up, or a previous sibling.. 
		"""
		siblings = self.get_siblings(True).order_by('name')
		if siblings:
			position = list(siblings).index(self)
			if position > 0:  # if the current item is not first
		 		return siblings[position - 1] # return previous one
		if self.parent:
			# mind: not elif cause if it's the first sibling we want the parent
			return self.parent
		else:
			return None
	
		

	# three shortcuts to get texts directly from the unit
	def textPears(self):
		e = TextExpression.objects.filter(title__icontains="pears")
		if e:
			try:
				return TextFragment.objects.get(textunit=self, in_expression=e[0]).contents
			except:
				return "Error: can't find Pears TextFragment for %s" % self.name
		else:
			return "Error: can't find Pears TextExpression instance!"

	def textOgden(self):
		e = TextExpression.objects.filter(title__icontains="ogden")
		if e:
			try:
				return TextFragment.objects.get(textunit=self, in_expression=e[0]).contents
			except:
				return "Error: can't find Ogden TextFragment for %s" % self.name
		else:
			return "Error: can't find Ogden TextExpression instance!"

	def textGerman(self):
		e = TextExpression.objects.filter(title__icontains="german")
		if e:
			try:
				return TextFragment.objects.get(textunit=self, in_expression=e[0]).contents
			except:
				return "Error: can't find German TextFragment for %s" % self.name
		else:
			return "Error: can't find German TextExpression instance!"			

		
			
	def __unicode__(self):
		return self.show_ancestors_tree()


mptt.register(TextUnit,)





class TextFragment(mymodels.EnhancedModel):
	"""(TextFragment : 
		The Fragments of an Expression in FRBR terms : the symbolic contents of a text unit
		If the symbols are organized using a code, we can specify that too (eg a language)
		
	"""
	contents = models.TextField(blank=True, verbose_name="contents")
	language = models.ForeignKey("Language", null=True, blank=True, 							verbose_name="language", on_delete=models.CASCADE)
	in_expression = models.ManyToManyField("TextExpression", blank=True, verbose_name="The Expression(s) this fragment belongs to")

	class Admin(admin.ModelAdmin):
		readonly_fields=('created_at', 'updated_at')
		list_display = ('id', 'contents', 'editedrecord', 'review',)
		search_fields = ('contents', 'id',)
		list_filter = ('updated_at', )
		filter_horizontal = ('in_expression',)
		fieldsets = [
			('Administration',	
				{'fields':	
					['editedrecord', 'review', 'internal_notes', ('created_at', 'created_by'), 
					  ('updated_at', 'updated_by')
					 ],	 
				'classes': ['collapse']
				}),
				('Description',			
					{'fields':	
						['contents', 'language', 'in_expression',]
					}),
		]
	class Meta:
		verbose_name_plural="Text Fragments"
	def __unicode__(self):
		return self.contents




class TextExpression(mymodels.EnhancedModel):
	"""(TextExpression : 
		The Expression in FRBR terms : the symbolic expression of a text - considered as a whole.
		Eg the first edition of the Tractatus in Fnglish, or the original one in German
		Usually the symbols are organized using a code, sp we can specify that too (eg a language)
		
		(we simplified things quite a lot here, as a more detailed representation would be overkill for this project)

	"""
	author = models.CharField(blank=True, max_length=300, verbose_name="author")
	title = models.CharField(blank=True, max_length=300, verbose_name="title")
	pubyear = models.IntegerField(blank=True, null=True)
	description = models.TextField(blank=True, verbose_name="description")
	language = models.ForeignKey("Language", null=True, blank=True, verbose_name="language", on_delete=models.CASCADE)

	class Admin(admin.ModelAdmin):
		readonly_fields=('created_at', 'updated_at')
		list_display = ('id', 'title', 'author', 'review',)
		search_fields = ('id', 'title', 'author', 'review',)
		list_filter = ('updated_at', )
		fieldsets = [
			('Administration',	
				{'fields':	
					['editedrecord', 'review', 'internal_notes', ('created_at', 'created_by'), 
					  ('updated_at', 'updated_by')
					 ],	 
				'classes': ['collapse']
				}),
				('Description',			
					{'fields':	
						['title', 'author', 'pubyear',  'description', 'language',]
					}),
		]
		
	class Meta:
		verbose_name_plural="Text Expression"
	def __unicode__(self):
		return "[%d] %s" % (self.id, self.title)
		





##################
#  Mon Oct	3 00:25:58 BST 2011
#  AUTHORITY LISTS 
#
##################


class TextUnitType(mymodels.EnhancedModel):
	"""(TextUnitType::: 
		A name for the desired text unit eg Paragraph or Chapter
	"""
	name = models.CharField(blank=True, max_length=100, verbose_name="name")
	description = models.TextField(blank=True, verbose_name="description")
	
	class Admin(admin.ModelAdmin):
		readonly_fields=('created_at', 'updated_at')
		list_display = ()
		search_fields = ()
		list_filter = ('updated_at', )
	class Meta:
		verbose_name_plural="TextUnitType"
	def __unicode__(self):
		return "%s" % self.name



class Language(mymodels.EnhancedModel):
	"""(Language::: 
		..
	"""
	name = models.CharField(blank=True, max_length=100, verbose_name="name")
	description = models.TextField(blank=True, verbose_name="description")

	class Admin(admin.ModelAdmin):
		readonly_fields=('created_at', 'updated_at')
		list_display = ()
		search_fields = ()
		list_filter = ('updated_at', )
	class Meta:
		verbose_name_plural="Language"
	def __unicode__(self):
		return "%s" % self.name
		

