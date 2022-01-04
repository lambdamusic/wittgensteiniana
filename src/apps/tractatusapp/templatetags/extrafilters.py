from django import template
from django.template.defaultfilters import stringfilter
# from django.utils.encoding import smart_str

# from ontoview.color_gradation import *

register = template.Library()


# style="margin-left:{{classinfo.treelevel|calc_margin}}px;"
@register.filter(name='calc_margin')
def calc_margin(value):
	return value * 30



# http://www.computerhope.com/htmcolor.htm
# Mind that the beginning color is set to be the same as the div#extra background color (defined in ontoview.css)
# @register.filter(name='calc_color')
# def calc_color(value):
# 	COLORS = interpolate("#FF8539", "#FAF8CC", 6)   #FF8539  interpolate("#FAF8CC", "#F76541", 6)
# 	if value == 99 or value > 6:
# 		return COLORS[-1]
# 	else:
# 		return COLORS[int(value)]









##################
#  Sun 17 Apr 2011 11:07:48 BST
#  others which are unused.... 
#
##################




@register.filter(name='cut')
@stringfilter
def cut(value, arg):
	return value.replace(arg, '')


# useful in expressing values from a M2M relation: returns all of them separated by ';'
@register.filter(name='printmany')
def printmany(lst, object_label = None):
	e = ""
	if lst:
		n = len(lst)
		if not object_label:
			for x in range(n - 1):
				e += "%s; " % (lst[x])
			e += "%s" % (lst[n -1])
		else:
			for x in range(n - 1):
				label = getattr(lst[x], object_label) or getattr(lst[x], 'id')
				e += "%s; " % (label)
			label = getattr(lst[n - 1], object_label) or getattr(lst[n - 1], 'id') # returns the id if label missing
			e += "%s" % (getattr(lst[n -1], object_label))
	return e


# as above, but also creates the link from the get_absolute_url method
# NEEDS THE SAFE filter too! >>>>>>> objects.all|printmany_withabsoluteurl|safe
@register.filter(name='printmany_withabsoluteurl')
def printmany_withabsoluteurl(lst, object_label = None):
	e = ""
	if lst:
		n = len(lst)
		if object_label:
			for x in range(n - 1):
				label = getattr(lst[x], object_label) or getattr(lst[x], 'id')
				e += "<a href=\"%s\" title=\"show details\">%s</a>; " % (lst[x].get_absolute_url(), label)
			label = getattr(lst[n - 1], object_label) or getattr(lst[n - 1], 'id')	
			e += "<a href=\"%s\" title=\"show details\">%s</a>" % (lst[n - 1].get_absolute_url(), getattr(lst[n - 1], object_label))
		else:
			for x in range(n - 1):
				e += "<a href=\"%s\" title=\"show details\">%s</a>; " % (lst[x].get_absolute_url(), lst[x])
			e += "<a href=\"%s\" title=\"show details\">%s</a>" % (lst[n - 1].get_absolute_url(), lst[n - 1])
		# e += "%s" % (lst[n -1])
	return e
	



# as above, but opens the link in new tab
# NEEDS THE SAFE filter too! >>>>>>> objects.all|printmany_withabsoluteurl|safe
@register.filter(name='printmany_withabsoluteurl2')
def printmany_withabsoluteurl2(lst, object_label = None):
	e = ""
	if lst:
		n = len(lst)
		if object_label:
			for x in range(n - 1):
				label = getattr(lst[x], object_label) or getattr(lst[x], 'id')
				e += "<a href=\"%s\" target=\"_blank\" title=\"show details\">%s</a>; " % (lst[x].get_absolute_url(), label)
			label = getattr(lst[n - 1], object_label) or getattr(lst[n - 1], 'id')	
			e += "<a href=\"%s\" target=\"_blank\" title=\"show details\">%s</a>" % (lst[n - 1].get_absolute_url(), getattr(lst[n - 1], object_label))
		else:
			for x in range(n - 1):
				e += "<a href=\"%s\" target=\"_blank\" title=\"show details\">%s</a>; " % (lst[x].get_absolute_url(), lst[x])
			e += "<a href=\"%s\" target=\"_blank\" title=\"show details\">%s</a>" % (lst[n - 1].get_absolute_url(), lst[n - 1])
		# e += "%s" % (lst[n -1])
	return e





# {{d.document|make_absolute_url:'id'|safe}}
@register.filter(name='make_absolute_url')
def make_absolute_url(obj, object_label = None):
	e = ""
	if obj:
		if object_label:
			label = getattr(obj, object_label) or getattr(obj, 'id')	
			e = "<a href=\"%s\" title=\"show details\">%s</a>" % (obj.get_absolute_url(), label)
		else:
			e = "<a href=\"%s\" title=\"show details\">%s</a>" % (obj.get_absolute_url(), obj)
	return e
	




# useful in expressing values from a M2M relation: returns all of them separated by ';'
# differently from printmany, this filter needs an 'object_label' (= object attribute) that returns a valid value, 
# otherwise it doesn't display anything (not even the ID number!)
@register.filter(name='printmany_noblank')
def printmany_noblank(lst, object_label):
	e = ""
	if lst:
		out = []
		n = len(lst)
		for x in range(n):
			label = getattr(lst[x], object_label)
			if label:
				out.append("%s" % label)
		e = "; ".join(out)
	return e






