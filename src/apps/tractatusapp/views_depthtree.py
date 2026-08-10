"""
Depth-rhythm timeline: plots every proposition in reading order (left to right),
with height = mptt nesting depth, showing the rhythm of the Tractatus diving into
and resurfacing from sub-clauses.
"""

from django.shortcuts import render
from django.utils.html import strip_tags
from django.utils.text import Truncator
import json

from tractatusapp.tractatus_reading_order import ordered_units, ogden_text_map


def index(request):
	"""
	Builds the reading-order sequence of TextUnits (depth, chapter, Ogden preview)
	and renders the D3 timeline.
	"""

	units = ordered_units()
	unit_text = ogden_text_map(units)

	nodes = []
	for unit in units:
		text = unit_text.get(unit.id, "")
		nodes.append({
			'id': unit.id,
			'name': unit.name,
			'depth': unit.level,
			'chapter': int(unit.name.split('.')[0]),
			'text': Truncator(strip_tags(text)).chars(280),
		})

	context = {
		'json': json.dumps(nodes),
		'experiment_description': """
			The Depth-Rhythm Tractatus plots every proposition in reading order, left to right, <br />
			with height showing how deeply nested each one is (a sub-comment on a sub-comment on a sub-comment...).
			<br /><br />
			<b>Hover</b> over a point to read that proposition. <b>Scroll</b> to zoom into a chapter.
			""",
	}

	return render(request, 'tractatusapp/depthtree/depthtree.html', context)
