"""
Shared reading-order data pipeline, used by all the "whole book at once"
visualizations (depthtree, silence, heartbeat, ladder, ...).
"""

import re

from django.utils.html import strip_tags

from tractatusapp.models import TextUnit, TextExpression, TextFragment


def clean_translation_html(html):
	"""
	Some TextFragments pack multiple sentences as adjacent divs with no
	whitespace between the tags (e.g. "...property.</div><div>It would...")
	so a plain strip_tags runs them together. Insert a space at tag
	boundaries first, then strip.
	"""
	return strip_tags(re.sub(r'>\s*<', '> <', html or '')).strip()


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


def _expression_text_map(units, expr):
	"""
	Bulk-fetches the translation text of `expr` for the given units in 2
	queries, instead of calling TextUnit.textOgden()-style accessors once per
	unit (N+1).
	"""
	if not expr:
		return {}

	frag_map = dict(
		TextFragment.objects.filter(in_expression=expr).values_list('id', 'contents')
	)

	links = TextUnit.hascontents.through.objects.filter(
		textunit_id__in=[u.id for u in units],
		textfragment_id__in=frag_map.keys(),
	).values_list('textunit_id', 'textfragment_id')

	return {textunit_id: frag_map[textfragment_id] for textunit_id, textfragment_id in links}


def ogden_text_map(units):
	"""Bulk-fetches the Ogden (1922) English translation text for the given units."""
	ogden_expr = TextExpression.objects.filter(title__icontains="ogden").first()
	return _expression_text_map(units, ogden_expr)


# (title substring, language label) for each translation shown alongside Ogden.
TRANSLATIONS = [
	('ogden', 'Ogden (1922)'),
	('pears', 'Pears & McGuinness (1961)'),
	('german', 'German (original)'),
]


def all_translations_map(units):
	"""
	Bulk-fetches every known translation (Ogden, Pears & McGuinness, German)
	for the given units.

	Returns {unit_id: {title_key: raw_html, ...}}, e.g.
	{527: {'ogden': '<div class="ogd">...</div>', 'pears': '...', 'german': '...'}}.
	Missing translations are simply absent from the inner dict.
	"""
	per_translation = {}
	for title_key, _label in TRANSLATIONS:
		expr = TextExpression.objects.filter(title__icontains=title_key).first()
		per_translation[title_key] = _expression_text_map(units, expr)

	result = {}
	for title_key, unit_map in per_translation.items():
		for unit_id, text in unit_map.items():
			result.setdefault(unit_id, {})[title_key] = text
	return result
