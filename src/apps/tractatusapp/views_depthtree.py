"""
Depth-rhythm timeline: plots every proposition in reading order (left to right),
with height = mptt nesting depth, showing the rhythm of the Tractatus diving into
and resurfacing from sub-clauses.
"""

from django.shortcuts import render
from django.utils.text import Truncator
import json

from tractatusapp.tractatus_reading_order import (
	ordered_units, all_translations_map, TRANSLATIONS, clean_translation_html,
)


def index(request):
	"""
	Builds the reading-order sequence of TextUnits (depth, chapter, Ogden preview)
	and renders the D3 timeline.
	"""

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
		})

	context = {
		'json': json.dumps(nodes),
		'experiment_description': """
			The Depth-Rhythm Tractatus plots every proposition in reading order, left to right, <br />
			with height showing how deeply nested each one is (a sub-comment on a sub-comment on a sub-comment...).
			<br /><br />
			<b>Hover</b> over a point for a preview. <b>Click</b> to read it in full, in every available translation (English: Ogden 1922, Pears &amp; McGuinness 1961; and the German original). <b>Scroll</b> to zoom into a chapter.
			""",
	}

	return render(request, 'tractatusapp/depthtree/depthtree.html', context)
