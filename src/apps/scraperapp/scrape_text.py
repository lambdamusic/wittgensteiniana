#!/usr/bin/env python

# this is a first working example. 
# We've got problems with the bloody Unicode that we'll have to address once and for all!
# note: with cases like 5.5423 we need a more intelligent extraction algorithm

# MAYbe use this version and extract the 3 versions separately:
#  http://people.umass.edu/phil335-klement-2/tlp/frames.html


from BeautifulSoup import BeautifulSoup, NavigableString
import random
import urllib2
import time
from django.utils.encoding import smart_str, smart_unicode




# utils


def get_file(path):
	f = open(path, 'r')	 
	contents = f.read()
	f.close
	return BeautifulSoup(contents)

def extractText(tags):
	res = ""	
	for tag in tags:
		if tag.__class__ == NavigableString:
			res += str(tag)
		else:
			res += extractText(tag)
	return res


# filename / class used to markup the text
TEXTS = [("text_ogden.html", "ogd"),
		("text_pears.html", "pmc"),
		("text_german.html" , "ger"),
		("texts_combined.html", None)]



# <div class="pnum" id="p1">1<a href="http://people.umass.edu/phil335-klement-2/tlp/footnotes.html#fn1ogden" id="fn1marker">*</a> 
#	<span class="verlinks">OGD [<a href="http://people.umass.edu/phil335-klement-2/tlp/bodygerman.html#p1">GER</a> | <a href="http://people.umass.edu/phil335-klement-2/tlp/bodypmc.html#p1">P/M</a>]</span>
# </div>
# <div class="ogd">The world is everything that is the case.</div>

def get_till_it_breaks(el, classname):
	""" Get all subsequent tags with certain class, till it breaks (=siblings) """
	res = ""
	if not el: 
		return res
	if el.__class__ == NavigableString:
		return "%s%s" % (res, get_till_it_breaks(el.nextSibling, classname))
	else:
		if el['class'] == classname:
			res += smart_str(el)
			return "%s%s" % (res, get_till_it_breaks(el.nextSibling, classname))
		else:
			return res

def extract_tractatus_html(filepath, classname):
	""" script for extracting the html
	TODO: you must save it into the DB at some point..
	 """
	soup = get_file(filepath)
	exit = []
	if True:
		all_tr = soup.findAll("div", { "class" : "pnum" })
		for x in all_tr:
			res = ""
			number = x.next
			# print number #this works but calling smart_str with it doesn't
			txt = x.findNext("div", { "class" : classname})	
			res = get_till_it_breaks(txt, classname)
			# print res		
			exit.append((number, res))
	return exit



if False:
	for t in TEXTS[:3]:
		extract_tractatus_html(t[0], t[1])









# JUST TESTING with the combined texts version
if False:
	filepath = TEXTS[3]
	soup = get_file(filepath)
	if False:
		x = soup.find("td", { "class" : "ger" })
		y = soup.find("td", { "class" : "ogd" })
		z = soup.find("td", { "class" : "pmc" })
		print x, y, z
	if True:
		all_tr = soup.findAll("tr")
		for x in all_tr:
			# print smart_str(x)  #this works too
			numbers = x.findNext("td", { "class" : "pnum" })   #the numbers
			txt = x.findNext("td", { "class" : "ogd" })	  #the numbers
			if numbers:
			#	print numbers
				print smart_str(extractText(numbers))
			if txt:
			#	print text: we'll hve to do 'extractText', and check for encoding errors...
				print txt
	









