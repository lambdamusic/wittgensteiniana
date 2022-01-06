"""
Using 
http://thejit.org/static/v20/Docs/files/Options/Options-Canvas-js.html#Options.Canvas
"""


from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render, redirect, get_object_or_404
import json 

import os
import json

from libs.myutils.myutils import printDebug
from tractatusapp.models import *




def spacetree(request):
	"""
	Visualizes a space tree - ORIGINAL VIEW  (USED TO GENERATE HTML VERSION)
	"""

	# DEFAULT JSON FOR TESTING THE APP
	to_json = {
		'id': "190_0",
		'name': "Pearl Jam",
		'children': [
		{
			'id': "306208_1",
			'name': "Pearl Jam &amp; Cypress Hill",
			'data': {
				'relation': "<h4>Pearl Jam &amp; Cypress Hill</h4><b>Connections:</b><ul><h3>Pearl Jam <div>(relation: collaboration)</div></h3><h3>Cypress Hill <div>(relation: collaboration)</div></h3></ul>"
			},},
		{	'id': "191_0",
			'name': "Pink Floyd",
			'children': [{
				'id': "306209_1",
				'name': "Guns and Roses",
				'data': {
				'relation': "<h4>Pearl Jam &amp; Cypress Hill</h4><b>Connections:</b><ul><h3>Pearl Jam <div>(relation: collaboration)</div></h3><h3>Cypress Hill <div>(relation: collaboration)</div></h3></ul>"
			},
		}],
	
	}]} 

	# reconstruct the tree as a nested dictionary

	TESTING = False

	def nav_tree(el):
		d = {}
		d['id'] =  el.name
		d['name'] = el.name
		full_ogden = generate_text(el)
		preview_ogden = "%s .." % ' '.join(el.textOgden().split()[:10]).replace("div", "span")		
		d['data'] = {'preview_ogden' : preview_ogden, 'full_ogden' : full_ogden}
		if el.get_children() and not TESTING:			
			d['children'] = [nav_tree(x) for x in el.get_children()]
		else:
			d['children'] = []
		return d
		
		
	treeroot = {'id': "root", 'name': "TLP", 'children': [], 
				'data': {'preview_ogden' : "root node", 'full_ogden' : generate_text("root")}}

	# level0 = TextUnit.tree.root_nodes()
	# TODO - make this a mptt tree function
	level0 = TextUnit.tree_top()
	for x in level0:
		treeroot['children'] += [nav_tree(x)]
		
	
	context = {	
				'json': json.dumps(treeroot),
				'experiment_description': """
					The Space Tree Tractatus is an experimental visualization of the <br />
					<a target='_blank' href="http://en.wikipedia.org/wiki/Tractatus_Logico-Philosophicus">Tractatus Logico-Philosophicus</a>, a philosophical text by Ludwig Wittgenstein. 
					<br /><br />
					<b>Click</b> on a node to move the tree and center that node. The text contents of the node are displayed at the bottom of the page. <b>Use the mouse wheel</b> to zoom and <b>drag and drop the canvas</b> to pan.									
					<br /><br />
					<small>Made with <a target='_blank' href="http://www.python.org/">Python</a> and the <a target='_blank' href="http://thejit.org/">JavaScript InfoVis Toolkit</a>. More info on this <a href="http://www.michelepasin.org/blog/2012/07/08/wittgenstein-and-the-javascript-infovis-toolkit/">blog post</a></small>
					
					"""
				
			}
	
	
	return render(request, 
				'tractatusapp/spacetree/spacetree.html', 
				context)
								







def generate_text(instance, expression="ogden"):
	""" creates the html needed for the full text representation of the tractatus
		includes the number-title, and small links to next and prev satz
	
	# TODO: add cases for different expressions
	"""
	if instance == "root":
		return """<div class='tnum'>Tractatus Logico-Philosophicus<span class='smalllinks'></small></div>
				  <div>Ludwig Wittgenstein, 1921.<br />
					   Translated from the German by C.K. Ogden in 1922<br />
					Original title: Logisch-Philosophische Abhandlung, Wilhelm Ostwald (ed.), Annalen der Naturphilosophie, 14 (1921)</div>		
				"""
	else:
		next, prev = "", ""
		next_satz = instance.tractatus_next()
		prev_satz = instance.tractatus_prev()
		if next_satz:
			next = "<a title='Next Sentence' href='javascript:focus_node(%s);'>&rarr; %s</a>" % (next_satz.name, next_satz.name) 
		if prev_satz:
			prev = "<a title='Previous Sentence' href='javascript:focus_node(%s);'>%s &larr;</a>" % (prev_satz.name, prev_satz.name)

		# HACK src images rendered via JS in the template cause WGET errors
		# hence they are hidden away in this visualization
		# TODO find a more elegant solution
		text_js_ready = instance.textOgden().replace('src="', '-src=\"src image omitted ')

		t = "<div class='tnum'><span class='smalllinks'>%s</span>%s<span class='smalllinks'>%s</span></div>%s" % (prev, instance.name, next, text_js_ready)
		return t

