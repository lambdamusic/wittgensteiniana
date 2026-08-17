"""
Concept web: a curated bipartite graph linking Tractatus propositions to the
philosophical concepts the user classified them under decades ago, imported
from a legacy OCML knowledge base into the Topic model (see CHANGELOG.md).
Concepts sit as hub nodes; the propositions that carry them (at any level of
nesting, not just the 7 top-level chapters) orbit around them.
"""

import json

from django.db.models import Count
from django.shortcuts import render

from tractatusapp.models import Topic
from tractatusapp.tractatus_reading_order import (
	ordered_units, all_translations_map, TRANSLATIONS, clean_translation_html,
)


def index(request):
	topics = list(Topic.objects.annotate(n=Count('textunits')).filter(n__gt=0))

	link_rows = list(
		Topic.textunits.through.objects
		.filter(topic_id__in=[t.id for t in topics])
		.values_list('topic_id', 'textunit_id')
	)
	linked_unit_ids = {uid for _, uid in link_rows}

	units = [u for u in ordered_units() if u.id in linked_unit_ids]
	unit_translations = all_translations_map(units)

	concepts = [
		{'id': 'c:%d' % t.id, 'name': t.name, 'description': t.description}
		for t in topics
	]

	propositions = []
	for unit in units:
		raw_translations = unit_translations.get(unit.id, {})
		translations = [
			{'key': key, 'label': label, 'text': clean_translation_html(raw_translations[key])}
			for key, label in TRANSLATIONS
			if raw_translations.get(key)
		]
		propositions.append({
			'id': 'p:%d' % unit.id,
			'name': unit.name,
			'chapter': int(unit.name.split('.')[0]),
			'translations': translations,
		})

	links = [{'source': 'c:%d' % tid, 'target': 'p:%d' % uid} for tid, uid in link_rows]

	context = {
		'json': json.dumps({'concepts': concepts, 'propositions': propositions, 'links': links}),
		'experiment_description': """
			The Concept Web links every proposition to the philosophical concepts it was classified under -
			a <a href="https://www.michelepasin.org/projects/philosurfical/index.html" target="_blank" style="color: #8ab4d8;">curated interpretation</a>,
			not a text search, spanning propositions at every level of nesting. <br /><br />
			<b>Hover</b> a concept to see its description. <b>Click</b> a concept to see which propositions carry it,
			or click any proposition to read it in full, in every available translation.
			""",
	}

	return render(request, 'tractatusapp/conceptweb/conceptweb.html', context)
