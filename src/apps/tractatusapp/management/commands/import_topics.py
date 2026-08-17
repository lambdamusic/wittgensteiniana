import os

from django.core.management.base import BaseCommand

from settings import SITE_ROOT
from tractatusapp.models import TextUnit, Topic
from tractatusapp.ocml_parser import parse_concepts, parse_interpretations

KB_DIR = os.path.join(SITE_ROOT, 'src', 'static', 'legacy', 'philosurfical-crm-kb2')
CONCEPTS_FILE = os.path.join(KB_DIR, 'ideas-tractatus-concepts.lisp')
INTERPRETATIONS_FILE = os.path.join(KB_DIR, 'events-my-tractatus-interpretation.lisp')


class Command(BaseCommand):
	help = (
		"Imports the legacy OCML concept classification "
		"(src/static/legacy/philosurfical-crm-kb2) into Topic records, "
		"linked to the TextUnit propositions they interpret."
	)

	def add_arguments(self, parser):
		parser.add_argument(
			'--dry-run', action='store_true',
			help="Parse and report counts without writing to the database.",
		)

	def handle(self, *args, **options):
		dry_run = options['dry_run']

		concepts = parse_concepts(CONCEPTS_FILE)
		interpretations = parse_interpretations(INTERPRETATIONS_FILE)
		self.stdout.write(f"Parsed {len(concepts)} concepts, {len(interpretations)} interpretations.")

		topic_map = {}
		created, updated = 0, 0
		for c in concepts:
			if dry_run:
				topic_map[c['external_id']] = c['external_id']
				continue
			topic, was_created = Topic.objects.update_or_create(
				external_id=c['external_id'],
				defaults={
					'name': c['name'],
					'description': c['description'],
					'defined_by_view': c['defined_by_view'],
				},
			)
			topic_map[c['external_id']] = topic
			created += int(was_created)
			updated += int(not was_created)

		# A proposition can have more than one expression-interpretation instance
		# (42 of them do, e.g. "6.5" has two) - topics must accumulate across all
		# of a unit's interpretations before being written, not overwrite per-instance.
		processed = 0
		unit_not_found = 0
		unresolved_targets = set()
		unit_topics = {}  # TextUnit (or sentence_number if dry_run) -> set of topics

		for interp in interpretations:
			processed += 1
			try:
				unit = TextUnit.objects.get(name=interp['sentence_number'])
			except TextUnit.DoesNotExist:
				unit_not_found += 1
				continue

			key = unit.pk if not dry_run else interp['sentence_number']
			unit_topics.setdefault(key, (unit, set()))
			for cid in interp['concept_ids']:
				topic = topic_map.get(cid)
				if topic is None:
					unresolved_targets.add(cid)
					continue
				unit_topics[key][1].add(topic)

		links_created = 0
		for unit, topics in unit_topics.values():
			links_created += len(topics)
			if not dry_run:
				unit.topics.set(topics)

		if dry_run:
			self.stdout.write(self.style.WARNING(f"[dry run] Would import/update {len(concepts)} Topics."))
		else:
			self.stdout.write(self.style.SUCCESS(f"Topics: {created} created, {updated} updated."))

		self.stdout.write(f"Interpretations processed: {processed}")
		self.stdout.write(f"Propositions not found in DB: {unit_not_found}")
		self.stdout.write(f"has-interpretation targets not resolved to a known Topic: {len(unresolved_targets)}")
		self.stdout.write(f"Topic<->TextUnit links {'that would be ' if dry_run else ''}created: {links_created}")

		if dry_run:
			self.stdout.write(self.style.WARNING("Dry run - no changes were written to the database."))
