"""
Heartbeat strip: one EKG-style pulse strip per chapter, each proposition a
spike sized by its word count - showing at a glance which chapters ramble
and which stay clipped.
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

	chapters = []
	for unit in units:
		chapter = int(unit.name.split('.')[0])
		raw_translations = unit_translations.get(unit.id, {})
		translations = [
			{'key': key, 'label': label, 'text': clean_translation_html(raw_translations[key])}
			for key, label in TRANSLATIONS
			if raw_translations.get(key)
		]
		ogden_text = next((t['text'] for t in translations if t['key'] == 'ogden'), '')
		node = {
			'id': unit.id,
			'name': unit.name,
			'depth': unit.level,
			'chapter': chapter,
			'words': len(ogden_text.split()),
			'text': Truncator(ogden_text).chars(280),
			'translations': translations,
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
			<b>Hover</b> a pulse for a preview. <b>Click</b> to read it in full below, in every available translation.
			""",
	}

	return render(request, 'tractatusapp/heartbeat/heartbeat.html', context)
