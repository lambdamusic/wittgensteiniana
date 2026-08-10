"""
Silence spiral: all 526 propositions placed on a tightening nautilus spiral in
reading order, converging to a single point - proposition 7, the book's last
word ("Whereof one cannot speak, thereof one must be silent."), which has no
children of its own.
"""

from django.shortcuts import render
from django.utils.html import strip_tags
from django.utils.text import Truncator
import json

from tractatusapp.tractatus_reading_order import ordered_units, ogden_text_map


def index(request):
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
			The Silence Spiral plots every proposition of the Tractatus, in reading order, along a tightening spiral. <br />
			<b>Hover</b> to read a proposition, <b>scroll</b> to zoom in. Follow it all the way to the center.
			""",
	}

	return render(request, 'tractatusapp/silence/silence.html', context)
