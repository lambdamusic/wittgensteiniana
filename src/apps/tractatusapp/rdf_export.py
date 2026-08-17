"""
Builds an RDF (schema.org-based) graph of the site's data - propositions,
their translations across editions, and the legacy concept classification -
for export as Turtle. See the export_rdf management command.
"""

from django.utils.html import strip_tags
from rdflib import Graph, Literal, Namespace
from rdflib.namespace import RDF, XSD

from tractatusapp.models import Topic
from tractatusapp.tractatus_reading_order import (
	ordered_units, all_translations_map, clean_translation_html, TRANSLATIONS,
)

ID = Namespace("http://wittgensteiniana.michelepasin.org/id/")
SCHEMA = Namespace("https://schema.org/")

TRACTATUS = ID.tractatus

# The German original doubles as the abstract work (TRACTATUS above) - it has
# no separate expression node, so it's absent from this dict. Ogden/Pears
# fragments attach to their expression's Book; German fragments attach
# directly to TRACTATUS.
EXPRESSIONS = {
	'ogden': {
		'uri': ID['expression/ogden'],
		'name': "Tractatus Logico-Philosophicus (tr. C.K. Ogden)",
		'author': "C.K. Ogden",
		'date': "1922",
		'lang': "en",
	},
	'pears': {
		'uri': ID['expression/pears'],
		'name': "Tractatus Logico-Philosophicus (tr. Pears & McGuinness)",
		'author': "D.F. Pears and B.F. McGuinness",
		'date': "1961",
		'lang': "en",
	},
}

LANG_CODES = {'ogden': 'en', 'pears': 'en', 'german': 'de'}


def unit_uri(unit_id):
	return ID['unit/%d' % unit_id]


def fragment_uri(unit_id, translation_key):
	# There's exactly one TextFragment per (unit, expression) pair in this
	# dataset (confirmed: 526 units * 3 editions = 1578 fragments, no gaps),
	# so a composite slug is a simpler stable identifier than round-tripping
	# through the actual TextFragment pk (which all_translations_map() doesn't
	# expose - it returns text keyed by unit id, not fragment id).
	return ID['fragment/%d-%s' % (unit_id, translation_key)]


def topic_uri(external_id):
	return ID['topic/%s' % external_id]


def build_graph():
	g = Graph()
	g.bind('schema', SCHEMA)
	g.bind('id', ID)

	# --- the work itself (German original) and its 2 translated editions ---
	g.add((TRACTATUS, RDF.type, SCHEMA.Book))
	g.add((TRACTATUS, SCHEMA.name, Literal("Tractatus Logico-Philosophicus")))
	g.add((TRACTATUS, SCHEMA.author, Literal("Ludwig Wittgenstein")))
	g.add((TRACTATUS, SCHEMA.inLanguage, Literal("de")))
	g.add((TRACTATUS, SCHEMA.datePublished, Literal("1921")))

	for info in EXPRESSIONS.values():
		uri = info['uri']
		g.add((uri, RDF.type, SCHEMA.Book))
		g.add((uri, SCHEMA.name, Literal(info['name'])))
		g.add((uri, SCHEMA.author, Literal(info['author'])))
		g.add((uri, SCHEMA.datePublished, Literal(info['date'])))
		g.add((uri, SCHEMA.inLanguage, Literal(info['lang'])))
		g.add((uri, SCHEMA.translationOfWork, TRACTATUS))

	# --- propositions (Chapter) + their translations (CreativeWork) ---
	units = ordered_units()
	unit_translations = all_translations_map(units)

	for rank, unit in enumerate(units, start=1):
		u_uri = unit_uri(unit.id)
		g.add((u_uri, RDF.type, SCHEMA.Chapter))
		g.add((u_uri, SCHEMA.name, Literal(unit.name)))
		g.add((u_uri, SCHEMA.position, Literal(rank, datatype=XSD.integer)))

		parent_uri = unit_uri(unit.parent_id) if unit.parent_id else TRACTATUS
		g.add((u_uri, SCHEMA.isPartOf, parent_uri))

		raw_translations = unit_translations.get(unit.id, {})
		for key, _label in TRANSLATIONS:
			html = raw_translations.get(key)
			text = clean_translation_html(html) if html else ''
			if not text:
				continue

			f_uri = fragment_uri(unit.id, key)
			g.add((f_uri, RDF.type, SCHEMA.CreativeWork))
			g.add((f_uri, SCHEMA.text, Literal(text, lang=LANG_CODES[key])))
			g.add((f_uri, SCHEMA.inLanguage, Literal(LANG_CODES[key])))
			g.add((f_uri, SCHEMA.exampleOfWork, u_uri))

			expression_uri = EXPRESSIONS[key]['uri'] if key in EXPRESSIONS else TRACTATUS
			g.add((f_uri, SCHEMA.isPartOf, expression_uri))

	# --- concepts (DefinedTerm) + mentions links ---
	g.add((ID.topics, RDF.type, SCHEMA.DefinedTermSet))
	g.add((ID.topics, SCHEMA.name, Literal("Wittgensteiniana concept classification")))

	topics = list(Topic.objects.all())
	topic_external_id = {}
	for topic in topics:
		t_uri = topic_uri(topic.external_id)
		topic_external_id[topic.id] = topic.external_id

		g.add((t_uri, RDF.type, SCHEMA.DefinedTerm))
		g.add((t_uri, SCHEMA.name, Literal(topic.name)))
		if topic.description:
			g.add((t_uri, SCHEMA.description, Literal(strip_tags(topic.description).strip())))
		g.add((t_uri, SCHEMA.inDefinedTermSet, ID.topics))

	link_rows = Topic.textunits.through.objects.values_list('topic_id', 'textunit_id')
	for topic_id, unit_id in link_rows:
		ext_id = topic_external_id.get(topic_id)
		if ext_id:
			g.add((unit_uri(unit_id), SCHEMA.mentions, topic_uri(ext_id)))

	return g
