"""
Silence spiral: all 526 propositions placed on a tightening nautilus spiral in
reading order, converging to a single point - proposition 7, the book's last
word ("Whereof one cannot speak, thereof one must be silent."), which has no
children of its own.
"""

from django.shortcuts import render
from django.utils.text import Truncator
import json

from tractatusapp.tractatus_reading_order import (
	ordered_units, all_translations_map, TRANSLATIONS, clean_translation_html,
)


def index(request):
	units = ordered_units()
	unit_translations = all_translations_map(units)

	nodes = []
	for unit in units:
		raw_translations = unit_translations.get(unit.id, {})
		translations = [
			{'key': key, 'label': label, 'text': clean_translation_html(raw_translations[key])}
			for key, label in TRANSLATIONS
			if raw_translations.get(key)
		]
		ogden_text = next((t['text'] for t in translations if t['key'] == 'ogden'), '')
		nodes.append({
			'id': unit.id,
			'name': unit.name,
			'depth': unit.level,
			'chapter': int(unit.name.split('.')[0]),
			'text': Truncator(ogden_text).chars(280),
			'translations': translations,
			'words': len(ogden_text.split()),
		})

	context = {
		'json': json.dumps(nodes),
		'experiment_description': """
			The Silence Spiral plots every proposition of the Tractatus, in reading order, along a tightening spiral - dot size shows how many words that proposition took. <br />
			<b>Hover</b> for a preview, <b>click</b> to read it in full on the right, in every available translation. <b>Scroll</b> to zoom in. Follow it all the way to the center.
			""",
	}

	return render(request, 'tractatusapp/silence/silence.html', context)
