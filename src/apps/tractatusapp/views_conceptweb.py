"""
Concept web: a bipartite force-directed graph linking propositions to a
curated set of recurring Tractatus terms. Reveals thematic threads that cut
across the numbering hierarchy - propositions in different chapters that
are secretly about the same idea pull toward each other via shared keywords.
"""

import re
from django.shortcuts import render
from django.utils.html import strip_tags
from django.utils.text import Truncator
import json

from tractatusapp.tractatus_reading_order import ordered_units, ogden_text_map

# curated recurring Tractatus vocabulary - deliberately loose prefixes
# (e.g. "silen" catches both "silence" and "silent")
KEYWORDS = [
	'world', 'fact', 'thing', 'object', 'proposition', 'sense', 'sign',
	'logic', 'picture', 'language', 'form', 'truth', 'philosophy', 'silen',
]


def index(request):
	units = ordered_units()
	unit_text = ogden_text_map(units)

	keyword_node_id = {kw: 'kw:%s' % kw for kw in KEYWORDS}
	nodes = [{'id': keyword_node_id[kw], 'label': kw, 'type': 'keyword'} for kw in KEYWORDS]
	links = []
	skipped = 0

	for unit in units:
		text = strip_tags(unit_text.get(unit.id, "")).lower()
		matched = [kw for kw in KEYWORDS if re.search(r'\b' + re.escape(kw), text)]
		if not matched:
			skipped += 1
			continue

		prop_node_id = 'p:%s' % unit.id
		nodes.append({
			'id': prop_node_id,
			'label': unit.name,
			'type': 'proposition',
			'chapter': int(unit.name.split('.')[0]),
			'text': Truncator(strip_tags(unit_text.get(unit.id, ""))).chars(280),
		})
		for kw in matched:
			links.append({'source': prop_node_id, 'target': keyword_node_id[kw]})

	# `skipped` propositions matched none of the curated KEYWORDS above and
	# are excluded from the graph (out of len(units) total).

	context = {
		'json': json.dumps({'nodes': nodes, 'links': links}),
		'experiment_description': """
			The Concept Web links every proposition to the recurring ideas it shares with the rest of the book <br />
			(world, fact, object, logic, sense, picture...) - threads that cut clean across the numbered hierarchy.
			<br /><br />
			<b>Drag</b> nodes to explore. <b>Hover</b> a keyword to see everything connected to it.
			""",
	}

	return render(request, 'tractatusapp/conceptweb/conceptweb.html', context)
