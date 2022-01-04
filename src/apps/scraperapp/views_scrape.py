
from django.http import HttpResponse
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import Http404
from django.shortcuts import get_object_or_404

from tractatusapp.models import *

import os 
from settings import printdebug, SITE_ROOT

from scraperapp.scrape_text import extract_tractatus_html


TEXTS = [("text_ogden.html", "ogd"),
		("text_pears.html", "pmc"),
		("text_german.html" , "ger"),
		("texts_combined.html", None)]
		

def launch(request):
	"""
	
	View that parses the html and instantiates the models. Run it by manually changing the valued contained
	in the TEXTS list.. Rem. to change also the language from 'english' to 'german' when needed
	
	Below, the 'get_or_create' approach make the server crash. Don't know why.... 
	I manually check for already existing stuff..
	
	tu, created = TextUnit.objects.get_or_create(name=each[0], hastype=paragraph)
	
	"""
	currentText = TEXTS[2][0]
	currentClass = TEXTS[2][1]
	
	filepath = os.path.join(SITE_ROOT, 'mymedia/texts/%s' % currentText)
	contents_list = extract_tractatus_html(filepath, currentClass)
	
	english, created = Language.objects.get_or_create(name="english")
	german, created = Language.objects.get_or_create(name="german")
	paragraph, created = TextUnitType.objects.get_or_create(name="paragraph")
	someText, created = TextExpression.objects.get_or_create(
	    title=currentText, language=german) # english or german
	
	for each in contents_list:
		print each
		number, text = each[0], each[1]
		try:
			tf = TextFragment.objects.filter(contents=text, language=english)[0]
		except:
			tf = TextFragment(contents=text, language=german)  # english or german
			tf.save()
		tf.in_expression.add(someText)
		try:
			tu = TextUnit.objects.filter(name=number.strip(), hastype=paragraph)[0]
		except:
			tu = TextUnit(name=number.strip(), hastype=paragraph)
			tu.save()
		tu.hascontents.add(tf)
				
	return render_to_response('test/test.html', 
								{
								'list': contents_list,					
								},
							  context_instance=RequestContext(request))






def create_tree_structure(request):
	"""
	Traverses the flat structure of TextUnit Numbers for the Tractatus, and tries to reconstruct the
	hierarchy based on decimal positions. 
	
	SOmetimes the tractatus has missing propositions (http://philosurfical.open.ac.uk/tractatus/info-gutenberg.html): 
	2.0, 2.020, 2.20, 3.00, 3.0, 3.20, 4.00, 4.0, 5.0, 5.10, 5.50, 5.530, 6.00. 6.0. 6.120.	
	
	In such cases we are not recreating the missing propositions, but just attaching the leaves to the nearest ancestor.
	
	FOr the tree to be created correctly, the TextUnit model needs to be ordered like this:
	
	class Meta:
		ordering = ['tree_id', 'name']  # don't insert 'lft'
	
	"""
	# for x in TextUnit.objects.all().reverse():
	for x in TextUnit.objects.all():
		if len(x.name) > 1:
			topname = x.name[:-1]
			if topname[-1] == ".":
				topname = topname[:-1]
			father_candidates = TextUnit.objects.filter(name=topname)
			if len(father_candidates) == 1:
				print ".... %s is father or ===> %s"  % (topname, x.name)
				x.move_to(father_candidates[0])
			else:
				print "+++ Found too many fathers for %s : %s .... Now I go up one level.." % (x.name, str(father_candidates))
				topname = topname[:-1]
				if topname[-1] == ".":
					topname = topname[:-1]
				father_candidates = TextUnit.objects.filter(name=topname)
				if len(father_candidates) == 1:
					print ".... %s is (gran)father or ===> %s"  % (topname, x.name)
					x.description == "MISSING PROPOSITIONS: %s is Gran-father or ===> %s"  % (topname, x.name)
					x.save()
					x.move_to(father_candidates[0])
				else:
					print "+=+=+=+=+=+ Could not find Granfathers for %s : %s" % (x.name, str(father_candidates))
					topname = topname[:-1]
					if topname[-1] == ".":
						topname = topname[:-1]
					father_candidates = TextUnit.objects.filter(name=topname)
					if len(father_candidates) == 1:
						print "........ %s is (Gran-Gran)father or ===> %s"  % (topname, x.name)
						x.description == "MISSING PROPOSITIONS: %s is Gran-Gran-father or ===> %s"  % (topname, x.name)
						x.save()
						x.move_to(father_candidates[0])
					else:
						print "+=+=+=+=+=++=+=+=+=+=+ Could not find Gran-Granfathers for %s : %s" % (x.name, str(father_candidates))
					
	return render_to_response('test/test.html', 
								{
								'list': [],					
								},
							  context_instance=RequestContext(request))				





