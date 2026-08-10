"""
Heartbeat strip: one EKG-style pulse strip per chapter, each proposition a
spike sized by its word count - showing at a glance which chapters ramble
and which stay clipped.
"""

from django.shortcuts import render
from django.utils.html import strip_tags
from django.utils.text import Truncator
import json

from tractatusapp.tractatus_reading_order import ordered_units, ogden_text_map


def index(request):
	units = ordered_units()
	unit_text = ogden_text_map(units)

	chapters = []
	for unit in units:
		chapter = int(unit.name.split('.')[0])
		text = strip_tags(unit_text.get(unit.id, ""))
		node = {
			'id': unit.id,
			'name': unit.name,
			'depth': unit.level,
			'words': len(text.split()),
			'text': Truncator(text).chars(280),
		}
		if not chapters or chapters[-1]['chapter'] != chapter:
			chapters.append({'chapter': chapter, 'units': []})
		chapters[-1]['units'].append(node)

	context = {
		'json': json.dumps(chapters),
		'experiment_description': """
			The Heartbeat Strip reads the Tractatus like an EKG: one pulse strip per chapter, <br />
			each spike sized by how many words that proposition takes to make its point.
			<br /><br />
			<b>Hover</b> a pulse to read the proposition.
			""",
	}

	return render(request, 'tractatusapp/heartbeat/heartbeat.html', context)
