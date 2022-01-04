from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render, redirect, get_object_or_404

import os
import json

from libs.myutils.myutils import printDebug
from tractatusapp.models import *




def index(request):
	"""
	View used for building the HTML pages from the DB.
	(later saved as html and rendered directly via the view above)
	"""
	version = request.GET.get("version", None)
	DEFAULT_VERSION = "ogden"
	ALLOWED_VERSIONS = ["ogden", "pears", "german"]
	if not version or version not in ALLOWED_VERSIONS:
		version = DEFAULT_VERSION

	all_units = TextUnit.objects.all()

	context = {
				'all_units' : all_units,
				'currentversion' : version,
				}

	return render(
		request, 
		'tractatusapp/onepager/index.html',
		context
		)



def index_cached(request):
	"""
	View used in combination with caching
	"""
	version = request.GET.get("version", None)
	DEFAULT_VERSION = "ogden"
	ALLOWED_VERSIONS = ["ogden", "pears", "german"]
	if not version or version not in ALLOWED_VERSIONS:
		version = DEFAULT_VERSION

	template_name = 'tractatusapp/onepager/index_cached_%s.html' % version

	context = {'currentversion' : version}

	return render(request, template_name, context)




