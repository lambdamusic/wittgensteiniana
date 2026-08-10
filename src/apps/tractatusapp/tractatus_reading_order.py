"""
Shared reading-order data pipeline, used by all the "whole book at once"
visualizations (depthtree, silence, heartbeat, ladder, ...).
"""

from tractatusapp.models import TextUnit, TextExpression, TextFragment


def ordered_units():
	"""
	Returns all TextUnits in true reading order across the whole book.

	Each top-level proposition (1..7) is its own mptt tree, so tree_id order
	isn't guaranteed to match book order - we sort the roots by their numeric
	name first, then walk each tree's own descendants (already DFS pre-order).
	"""
	top_units = sorted(TextUnit.tree_top(), key=lambda u: int(u.name))

	units = []
	for top in top_units:
		units += list(top.get_descendants(include_self=True))
	return units


def ogden_text_map(units):
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
