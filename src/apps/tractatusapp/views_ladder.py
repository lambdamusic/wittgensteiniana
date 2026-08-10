"""
The Ladder: stages Wittgenstein's own closing metaphor (prop. 6.54 - "he must
so to speak throw away the ladder after he has climbed up it"). A scrolling
page where each proposition is a rung, indented by nesting depth, that
dissolves once you've scrolled past it.
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
			'text': Truncator(strip_tags(text)).chars(400),
		})

	context = {
		'json': json.dumps(nodes),
		'experiment_description': """
			"He must so to speak throw away the ladder after he has climbed up it." (6.54) <br />
			<b>Scroll</b> down to climb the Tractatus, rung by rung. Each rung dissolves once you've climbed past it.
			""",
	}

	return render(request, 'tractatusapp/ladder/ladder.html', context)
