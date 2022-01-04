from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render, redirect, get_object_or_404

import os
import json

from libs.myutils.myutils import printDebug
from tractatusapp.models import *





def index(request):
	"""TIP: use this view to regenerate the index page, which can then be cached and saved to an HTML file
	"""
	all_units = TextUnit.objects.all()
	return render(request, 
		'tractatusapp/typewriter/index.html',
		{
			'all_units' : all_units
		},
	)



def get_sentence(request, num=None, version=None):
	DEFAULT_VERSION = "ogden"  # available versions: 'ogden' , 'pears', 'german'
	if not num:
		num = 1

	if not version:
		return redirect('tractatusapp:get_sentence_version', num=num, version=DEFAULT_VERSION)

	try:
		unit = TextUnit.objects.get(name=num)
		next = unit.tractatus_next()
		prev = unit.tractatus_prev()
		text = ""
		if version == 'ogden':
			text = unit.textOgden()
		if version == 'pears':
			text = unit.textPears()
		if version == 'german':
			text = unit.textGerman()
	except:
		# 2016-11-04
		raise Http404


	return render(request, 
		'tractatusapp/typewriter/sentence.html',
			{
				'unit' : unit,
				'next' : next,
				'prev' : prev,
				'text' : text,
				'currentversion' : version,
			}
	)
