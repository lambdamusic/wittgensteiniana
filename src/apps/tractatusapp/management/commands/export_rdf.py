import os

from django.core.management.base import BaseCommand
from rdflib.namespace import RDF

from settings import SITE_ROOT
from tractatusapp.rdf_export import build_graph

DEFAULT_OUTPUT = os.path.join(SITE_ROOT, 'backups', 'rdf', 'wittgensteiniana.ttl')


class Command(BaseCommand):
	help = (
		"Exports the site's data (propositions, translations, and the legacy "
		"concept classification) as an RDF graph, serialized as Turtle."
	)

	def add_arguments(self, parser):
		parser.add_argument(
			'--output', default=DEFAULT_OUTPUT,
			help="Path to write the .ttl file to (default: %s)" % DEFAULT_OUTPUT,
		)

	def handle(self, *args, **options):
		output_path = options['output']

		graph = build_graph()

		os.makedirs(os.path.dirname(output_path), exist_ok=True)
		graph.serialize(destination=output_path, format='turtle')

		type_counts = {}
		for _, _, obj in graph.triples((None, RDF.type, None)):
			key = str(obj)
			type_counts[key] = type_counts.get(key, 0) + 1

		self.stdout.write(self.style.SUCCESS("Wrote %d triples to %s" % (len(graph), output_path)))
		for key, count in sorted(type_counts.items()):
			self.stdout.write("  %s: %d" % (key, count))
