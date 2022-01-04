# myutils.py

import sys
import click
from time import strftime
import json


def print_json(your_json_string):
    print(json.dumps(your_json_string, indent=4))


def printDebug(s, style=None):
    """
	=> http://click.pocoo.org/5/utils/
	EG
	click.secho('Hello World!', fg='green')
	click.secho('Some more text', bg='blue', fg='white')
	click.secho('ATTENTION', blink=True, bold=True)
	"""
    msg = ">>[%s]debug>>: %s" % (strftime("%H:%M:%S"), s)
    try:
        if style == "comment":
            click.secho(msg, fg='white')
        elif style == "important":
            click.secho(msg, bold=True)
        else:
            click.secho(msg)
    except:
        try:
            print >> sys.stderr, msg
        except:
            pass


def truncate_words(sentence, max):
    t = sentence.split(" ")
    if len(t) < max:
        return sentence
    else:
        return " ".join(t[:max]) + "..."


def split_list(L, n):
    """
	n is the size of the splitted list element (not the tot number of elements!)

	In [8]: for x in split_list(range(4), 1):
	   ...:		print x
	   ...:
	[0]
	[1]
	[2]
	[3]

	"""
    assert type(L) is list, "L is not a list"
    for i in range(0, len(L), n):
        yield L[i:i + n]


def blank_or_string(s):
    """If it's empty, output the string blank"""
    if not s.strip():
        return 'blank'
    return s


def preview_string(s, length):
    """If we have a value, returns the first [length] chars of the string.."""
    if s:
        if len(s) < length:
            result = unicode(s)
        else:
            result = unicode(s)[0:length] + "..."
        return result


def isint(s):
    """checks if a string is a number"""
    try:
        return int(s)
    except ValueError:
        return False


def findmin(rangen, n):
    e = 0
    while e < n:
        e += rangen
        # returns the one before
    return e - rangen


def findmax(rangen, n):
    e = 0
    while e < n:
        e += rangen
        # returns the one after
    return e


def buildranges(amin, amax, rangeval):
    """Retunrs a list of tuples, with the string-range first and then
     the numbers in a tuple: [('990-1020', (990, 1020)), ('1020-1050', (1020, 1050))]  """
    r = []
    allvalues = range(amin, amax, rangeval)
    for index, item in enumerate(allvalues):
        if (index + 1) < len(allvalues):
            a = "%d-%d" % (item, allvalues[index + 1])
            r.append((a, (item, allvalues[index + 1])))
    return r


def split_list_into_two(somelist):
    x = len(somelist)
    z = x / 2
    res1 = somelist[:(x - z)]
    res2 = somelist[(x - z):]
    return [res1, res2]


def group_list_items_by_two(lista, listaexit=None):
    lista_x = []
    listaexit = listaexit or []
    if lista:
        lista_x.extend(lista)
        lista_x.reverse()
        first_el = lista_x.pop()
        if len(lista_x) == 0:
            second_el = None
        else:
            second_el = lista_x.pop()
        listaexit.append([first_el, second_el])
        if lista[2:]:
            group_list_items_by_two(lista[2:], listaexit)
        #print(listaexit)
        return listaexit


filler = ["value_%s" % (i) for i in range(10)]


# given a center, returns a list of the neighbouring numbers according to the paramenters passed
def paginator_helper(
        center,
        max,
        howmany=5,
        interval=1,
        min=1,
):
    if center - howmany > min:
        min = center - howmany
    if center + howmany < max:
        max = center + howmany
    return range(min, (max + 1), interval)
