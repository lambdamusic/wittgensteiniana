from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render, redirect, get_object_or_404
import json 

import os
import json

from libs.myutils.myutils import printDebug
from tractatusapp.models import *




# using a static json dump of the Tractatus
# create it here: d3tree/getjson/
								
								
def index(request):
	# data is stored in 'data.json' and loaded in template
	return render(request, 
					'tractatusapp/d3tree/d3tree.html', 
					{},
	)



def getjson(request):
	"""
	View used for outputting JSON for testing purposes
	"""

	tree = [_buildJson(el) for el in TextUnit.objects.filter(level__in=[0])]
	temp = {'name' : 'TLP', 'children' : tree}
	text = json.dumps(temp)

	return render(	request,
					'tractatusapp/wholetext/jsontext.html', 
					{
						'text' : text
					})



def _buildJson(el):
	"Returns each sentence unit and total number of children as a dict"
	new = {}
	CHILDREN = el.get_children()
	new['name'] = el.name
	new['size'] = len(CHILDREN) or 1
	if CHILDREN:
		new['children'] = [_buildJson(x) for x in CHILDREN]
	return new


