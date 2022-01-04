'''
Allows for a quick startup loading commonly used classes, installed apps, and console utils.

To use: After 'manage.py shell', enter 'from project.utils.shellstartup import *'

'''




from django.conf import settings
from django.db import connection, models

# Load each installed app and put models into the global namespace.
for app in models.get_apps():
	exec("from %s import *" % app.__name__)
		
def last_query():
	"Show the last query performed."
	return connection.queries[-1]


def describe_instance(i):
	"""utility that shows all the contents of an object - TO BE TESTED MORE.. for example it doesn't work 
	    with a string, although it is an object.."""
	if isinstance(i, object):
		print 'Type : ', type(i), "\n++++++++"
		try:
			for k in i.__dict__.keys():
				print k, ':', i.__dict__[k]
		except:
			print "ERROR: \'", i, "\' does not have the __dict__ attribute.. is it an object?"
				


#===================================================
# Add commonly used modules, classes, functions here
#===================================================
from django import forms
import os
from datetime import datetime


#  from poms.utils.shellstartup import *

#### stuff for testing the facetedBrowser
# 
# from poms.facetedbrowser.facetviews import *
# 
# # build the facet-groups objects and add the facet objects to them
# loaded_facet_groups = []
# for x in default_facets_groups:
# 	loaded_facet_groups.append(FacetsGroup(x['label'],	x['facets'] ))
# 
# #from the specs: get the info about the result types we have
# result_types = result_types_list  
# 
# # initialize the faceted manager
# f = FacetedManager(loaded_facet_groups, result_types)
