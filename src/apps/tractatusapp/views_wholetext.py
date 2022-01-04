from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render, redirect, get_object_or_404

import os
import json

from libs.myutils.myutils import printDebug
from tractatusapp.models import *






def wholetext(request):
	a_level = request.GET.get('level', 'all')
	a_fontsize = request.GET.get('fontsize', '14')
	if a_level in ['0', '1', '2', '3', '4', '5', '6', '7', '8']:
		units = TextUnit.objects.filter(level=int(a_level))
	else:
		units = TextUnit.objects.all()

	context = 	{
				'units' : units,
				'fontsize' : a_fontsize,
			}

	return render(	request, 
					'tractatusapp/wholetext/wholetext.html',
					context)


