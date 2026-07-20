"""
Depth-rhythm timeline: plots every proposition in reading order (left to right),
with height = mptt nesting depth, showing the rhythm of the Tractatus diving into
and resurfacing from sub-clauses.
"""

from django.shortcuts import render
from django.utils.html import strip_tags
from django.utils.text import Truncator
import json

from tractatusapp.models import TextUnit, TextExpression, TextFragment


def index(request):
	"""
	Builds the reading-order sequence of TextUnits (depth, chapter, Ogden preview)
	and renders the D3 timeline.
	"""

	ordered_units = _ordered_units()
	unit_text = _ogden_text_map(ordered_units)

	nodes = []
	for unit in ordered_units:
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


def _ordered_units():
	"""
	Returns all TextUnits in true reading order across the whole book.

	Each top-level proposition (1..7) is its own mptt tree, so tree_id order
	isn't guaranteed to match book order - we sort the roots by their numeric
	name first, then walk each tree's own descendants (already DFS pre-order).
	"""
	top_units = sorted(TextUnit.tree_top(), key=lambda u: int(u.name))

	ordered = []
	for top in top_units:
		ordered += list(top.get_descendants(include_self=True))
	return ordered


def _ogden_text_map(units):
	"""
	Bulk-fetches the Ogden translation text for the given units in 2 queries,
	instead of calling TextUnit.textOgden() once per unit (N+1).
	"""
	ogden_expr = TextExpression.objects.filter(title__icontains="ogden").first()
	if not ogden_expr:
		return {}

	frag_map = dict(
		TextFragment.objects.filter(in_expression=ogden_expr).values_list('id', 'contents')
	)

	links = TextUnit.hascontents.through.objects.filter(
		textunit_id__in=[u.id for u in units],
		textfragment_id__in=frag_map.keys(),
	).values_list('textunit_id', 'textfragment_id')

	return {textunit_id: frag_map[textfragment_id] for textunit_id, textfragment_id in links}
