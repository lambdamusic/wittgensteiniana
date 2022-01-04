from django.contrib import admin
from django.conf import settings
from django.conf.urls import *
from django.utils.translation import ugettext_lazy as _

from tractatusapp.models import *

# from myutils.adminextra.autocomplete_tree_admin import AutocompleteTreeEditor


# http://docs.djangoproject.com/en/dev/ref/contrib/admin/actions/#making-actions-available-site-wide
def make_edited(modeladmin, request, queryset):
    queryset.update(editedrecord=True)
make_edited.short_description = "Mark selected objects as edited"
def make_notedited(modeladmin, request, queryset):
    queryset.update(editedrecord=False)
make_notedited.short_description = "Mark selected objects as NOT edited"
def make_review(modeladmin, request, queryset):
    queryset.update(review=True)
make_review.short_description = "Mark selected objects as under review"
def make_notreview(modeladmin, request, queryset):
    queryset.update(review=False)
make_notreview.short_description = "Mark selected objects as NOT under review"

admin.site.add_action(make_edited, 'make_edited')
admin.site.add_action(make_notedited, 'make_notedited')
admin.site.add_action(make_review, 'export_selected')
admin.site.add_action(make_notreview, 'make_notreview')



# STANDARD admin definitions

class AuthListStandardAdmin(admin.ModelAdmin):
	"""Standard admin definitions used by all authority lists"""
	
	def save_model(self, request, obj, form, change):
		"""adds the user information when the rec is saved"""
		if getattr(obj, 'created_by', None) is None:
			  obj.created_by = request.user
		obj.updated_by = request.user
		obj.save()

	readonly_fields=('created_at', 'updated_at')
	list_display = ('id', 'name', 'description', 'editedrecord', 'review','updated_by', 'updated_at',)
	search_fields = ('name', 'id')
	list_filter = ('updated_at', 'updated_by', 'editedrecord', 'review', )
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
				['name', 'description']
			}),

		]





# # =========>>>>>>> the FEINCMS admin!!!!!!!!!!!!!!!!!
# class GenericTreeAdmin(AutocompleteTreeEditor):
# 	# list_display = ('possname',)
# 	def save_model(self, request, obj, form, change):
# 		"""adds the user information when the rec is saved"""
# 		if getattr(obj, 'created_by', None) is None:
# 			  obj.created_by = request.user
# 		obj.updated_by = request.user
# 		obj.save()
# 	#  extending TreeAdmin's _actions_column 
# 	def _actions_column(self, page):
# 		actions = super(GenericTreeAdmin, self)._actions_column(page)
# 		actions.insert(0, u'<a href="add/?parent=%s" title="%s"><img src="%simg/admin/icon_addlink.gif" alt="%s"></a>' % (
# 			page.pk, _('Add child page'), settings.ADMIN_MEDIA_PREFIX , _('Add child page')))
# #	 actions.insert(0, u'<a href="add/?parent=%s" title="%s"><img src="%simg/admin/icon_addlink.gif" alt="%s"></a>' % (
# #		 page.pk, _('Add child page'), django_settings.ADMIN_MEDIA_PREFIX ,_('Add child page')))
# #	 actions.insert(0, u'<a href="%s" title="%s"><img src="%simg/admin/selector-search.gif" alt="%s" /></a>' % (
# #		 page.get_absolute_url(), _('View on site'), django_settings.ADMIN_MEDIA_PREFIX, _('View on site')))
# 		return actions
# 	list_display = ( 'name', 'id', 'parent', 'editedrecord', 'review','updated_by', 'updated_at',)
# 	# filter_horizontal = ('location',) 
# 	# radio_fields = {"ltbrole": admin.VERTICAL}
# 	list_filter = ['updated_at', 'updated_by', 'editedrecord', 'review', ] #'parent'
# 	search_fields = ['id', 'name']
# 	related_search_fields = { 'parent': ('name',),}
# 	fieldsets = [
# 		('Administration',	
# 			{'fields':	
# 				['editedrecord', 'review', 'internal_notes', ('created_at', 'created_by'), 
# 				  ('updated_at', 'updated_by')
# 				 ],	 
# 			'classes': ['collapse']
# 			}),
# 			('Description',			
# 				{'fields':	
# 					['name', 'parent', 'place', 'notes'	]
# 				}),

# 	]







# authority lists admin definition

# auth_lists = [TextUnitType, Language]

# # apply the StandardAdmin to all the auth lists
# func = lambda x : admin.site.register(x, AuthListStandardAdmin)
# map(func, auth_lists)

# Main domain entities
admin.site.register(TextUnit, TextUnit.Admin)
admin.site.register(TextFragment, TextFragment.Admin)
admin.site.register(TextExpression, TextExpression.Admin)


admin.site.register(TextUnitType, AuthListStandardAdmin)
admin.site.register(Language, AuthListStandardAdmin)












