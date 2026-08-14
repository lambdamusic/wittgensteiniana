"""
The Ladder: stages Wittgenstein's own closing metaphor (prop. 6.54 - "he must
so to speak throw away the ladder after he has climbed up it"). A scrolling
page where each proposition is a rung, indented by nesting depth, that
dissolves once you've scrolled past it.
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
			'text': Truncator(ogden_text).chars(400),
			'translations': translations,
		})

	context = {
		'json': json.dumps(nodes),
		'experiment_description': """
			"He must so to speak throw away the ladder after he has climbed up it." (6.54) <br />
			<b>Scroll</b> down to climb the Tractatus, rung by rung, or use the &uarr; &darr; arrow keys.
			<b>Click</b> a rung to read it in full, in every available translation.
			""",
	}

	return render(request, 'tractatusapp/ladder/ladder.html', context)
