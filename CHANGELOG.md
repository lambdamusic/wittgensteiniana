# Changelog

## 2026-08-17 — Database exported as RDF (Turtle)

Added a `python manage.py export_rdf` command that exports the site's data - all 526 propositions, all 1,578 translation fragments (3 editions × 526), and all 182 concepts with their 1,095 links to propositions - as a standalone `schema.org`-based RDF graph, serialized to `backups/rdf/wittgensteiniana.ttl`. No custom ontology needed - schema.org covered everything:

- `TextUnit` → `schema:Chapter`, at every nesting level (not just the 7 top-level ones), linked into a tree via `schema:isPartOf`, with `schema:position` giving each proposition's rank in true reading order.
- `TextFragment` → `schema:CreativeWork`, linked to the proposition it realizes via `schema:exampleOfWork` and to its edition (`schema:isPartOf` an Ogden/Pears & McGuinness/German `schema:Book`). The two English translations are related to the German original via `schema:translationOfWork`.
- `Topic` → `schema:DefinedTerm` (all 182, not just the 99 currently linked to a proposition - a full export includes the "orphan" concepts too), grouped under one `schema:DefinedTermSet`.
- Concept↔proposition links → `schema:mentions` triples on the `Chapter` nodes, straight from `Topic.textunits.through`.

New files: `tractatusapp/rdf_export.py` (graph-building logic, reuses `ordered_units()`/`all_translations_map()`/`clean_translation_html()` from `tractatus_reading_order.py` - no new data-access code needed) and `tractatusapp/management/commands/export_rdf.py`. Added `rdflib` as a dependency. Verified by round-tripping the output back through `rdflib.Graph().parse()` and re-querying the same "6.36" worked example used to verify `/conceptweb` - `schema:mentions` correctly resolves to "Propositions of Science", "Law of Causality", "Natural Science".

## 2026-08-17 — `/conceptweb` rebuilt as a 3-panel concept explorer

Replaced the placeholder 14-keyword regex version of `/conceptweb` with a real explorer over the `Topic` classification imported earlier the same day: a left sidebar of concepts (hover for description, click to select), a center D3 force graph (99 concept hub nodes ↔ 466 proposition satellite nodes, 1,095 edges, colored/highlighted in sync with the sidebars), and a right sidebar of propositions (all 466 by default, narrowed to the selected concept's propositions when one is picked). Clicking any proposition (sidebar or graph node) opens a full-screen reading overlay with all 3 translations and Prev/Next navigation through whichever list is currently active.

Layout, graph mechanics (force simulation, drag, zoom, hover-dim), and the reading overlay are all adapted from existing patterns already used elsewhere in the app (`/silence`'s flex layout, `/ladder`'s modal, the original `/conceptweb`'s D3 setup) rather than built from scratch. Files touched: `views_conceptweb.py` (full rewrite), `templates/tractatusapp/conceptweb/conceptweb.html` (full rewrite).

**Bug fixes found and fixed while building this:**

- `tractatus_reading_order.ordered_units()` (shared by `/ladder`, `/depthtree`, `/silence`, `/heartbeat`, and now `/conceptweb`) returned propositions within a chapter in the wrong order at deeper nesting levels - e.g. `6.5, 6.54, 6.53, 6.52, 6.522, ...` instead of `6.5, 6.51, 6.52, 6.521, 6.522, 6.53, 6.54`. Root cause: it trusted mptt's `get_descendants()` traversal order, which reflects original record-insertion order, not proposition number. Fixed by re-sorting each chapter's descendants using a key that compares the digits after the "." as a string/decimal-fraction (matching Wittgenstein's own numbering scheme) rather than as an integer. This corrects proposition ordering - and therefore Prev/Next navigation - across all five visualizations that share this helper, not just the new one.
- The initial 3-panel layout used `body { min-height: 100vh }`, which doesn't cap height - with a 466-item sidebar list, the whole page silently grew to ~15,000px tall instead of the sidebars scrolling internally within a fixed viewport, making the center graph appear completely blank (correct data, zero visible pixels). Fixed by switching to a fixed `height: 100vh` + `overflow: hidden` on `body`, letting the `min-height: 0` already set on the flex children do its job.
- Clicking a graph proposition node that wasn't part of the currently-selected concept's filtered list opened the wrong proposition's text (silently falling back to index 0 of the filtered list rather than the node actually clicked), because the reading overlay used the same list for both "what's being displayed" and "Prev/Next bounds." Fixed by falling back to the full proposition list when the clicked node isn't a member of the currently active one.

## 2026-08-17 — Legacy concept classification imported as `Topic`

Extracted a philosophical concept classification the user authored years ago in OCML (an old Lisp-based knowledge representation language) and imported it into the Django app as real, queryable data, so it can later be used to improve the `/conceptweb` visualization (currently driven by a hand-typed list of 14 keywords, see `views_conceptweb.py`).

### New `Topic` model

Added `Topic` to `src/apps/tractatusapp/models.py`: `name`, `external_id` (stable OCML identifier, for idempotent re-import), `description`, `defined_by_view`, and a `textunits` many-to-many to `TextUnit`. Registered in Django admin. Migration: `src/apps/tractatusapp/migrations/0002_topic.py`.

### Extraction pipeline

- `src/apps/tractatusapp/ocml_parser.py` — a small, generic S-expression reader for OCML source (handles `#| |#`/`;;` comments, escaped quotes in strings, case-insensitive slot/identifier matching), plus two extractors: `parse_concepts()` and `parse_interpretations()`.
- `src/apps/tractatusapp/management/commands/import_topics.py` — new Django management command (first one in this repo), run via `python manage.py import_topics` (`--dry-run` supported). Rerunnable/idempotent: matches on `external_id`, `.set()`s each proposition's topic links from the union of all its interpretation instances.

### Source data

Only two files of the legacy KB (`src/static/legacy/philosurfical-crm-kb2/`) were in scope — everything else in that directory was surveyed and found either structurally incompatible or unreferenced, and has since been **deleted** (recoverable via git history if ever needed):

- `ideas-tractatus-concepts.lisp` — concept definitions (kept)
- `events-my-tractatus-interpretation.lisp` — proposition → concept links (kept)
- Everything else (8 sibling `ideas-*.lisp` files with incompatible schemas, the concept↔concept `events-tractatus-concepts-interpretations.lisp` network, `actors-*.lisp`, `informationobjects-*.lisp`, `instances-unclassified.lisp`, `load.lisp`, `-stillUnused/`) — removed; none of it is referenced anywhere in the live app.

### Import stats

- **182** concepts parsed → **182** `Topic` records created
- **576** `expression-interpretation` instances parsed, all **576** resolved to a real `TextUnit` (0 not found)
- **1,095** `Topic` ↔ `TextUnit` links created
- **55** `has-interpretation` targets did not resolve to an imported `Topic` — these reference concepts defined in the 8 out-of-scope `ideas-*.lisp` files (deleted; would need separate, per-file extraction logic if ever revisited)
- **9** interpretation instances had an empty `has-interpretation` (valid — no links created for those)
- **42** propositions have more than one interpretation instance (e.g. proposition "6.5" has two); their topics are accumulated across all instances, not overwritten

### Display cleanup

Concept names in the source data were authored in two inconsistent styles depending on era (`LAW-OF-CAUSALITY` vs `propositions-of-science`). `Topic.name` is now generated via a title-casing helper (`_titlecase()` in `ocml_parser.py`) that keeps articles/prepositions lower-case unless first/last word, e.g. `Law of Causality`, `Propositions of Science`.

### Verified

- `manage.py check` passes; `Topic` admin page (list, search, `textunits` widget) confirmed working.
- Worked example: `TextUnit "6.36"` → topics `Law of Causality`, `Propositions of Science`, `Natural Science`.
- Re-running `import_topics` after both the title-casing change and the file deletion produced identical counts (0 created / 182 updated, same 1,095 links) — confirms idempotency and that nothing broke.

**Not done yet (deferred):** `/conceptweb` itself hasn't been changed to use `Topic` data — this was scoped as extraction/import only.

## 2026-08-14

Finalized the **Depth-Rhythm** (`/depthtree`) and **Silence Spiral** (`/silence`) visualizations:

* Both now show every proposition in all three available translations - Ogden (1922), Pears & McGuinness (1961), and the German original - instead of just Ogden.
* Click any point/dot to open a reading panel with the full text in all three translations, plus **Previous/Next** buttons and **left/right arrow key** navigation to step through propositions in reading order.
* Fixed a text-cleaning bug where propositions stored as multiple adjacent HTML fragments were losing the space between sentences.
* Silence Spiral: reworked into a two-pane layout (spiral on the left, reading panel on the right); dot size is now driven by each proposition's word count instead of its position on the spiral; dismissing the proposition-7 finale now selects it in the reading panel.

Finalized the **Heartbeat Strip** (`/heartbeat`) visualization:

* Added the same reading panel as Depth-Rhythm below the chart: click any pulse to read that proposition in full, in all three translations.
* Added **Previous/Next** buttons and **left/right arrow key** navigation, stepping through the flattened reading order across all 7 chapter strips.
* Replaced the black background with a warm paper theme (`#f7f5f0`, deep green accent) and swapped the pastel chapter palette for Depth-Rhythm's darker one so the pulses stay legible on the lighter ground.
* Updated the footer credit line to match the other two visualizations.

Small fix to **Silence Spiral** (`/silence`): removed the auto-popup "Proposition 7" overlay that fired 2.2s after page load - the spiral and reading panel are now visible immediately, no interruption.

Finalized the **Ladder** (`/ladder`) visualization:

* Replaced the flat near-black background with a full page-length gradient - cool slate at the top, softening to pale blue-white by proposition 7 - plus a faint dot-grid texture. Each rung now sits on a dark translucent card so text stays legible across the whole gradient instead of just at the top.
* **Click** a rung to open a large overlay with all three translations (Ogden, Pears & McGuinness, German), with Prev/Next buttons and Escape-to-close.
* **Up/down arrow keys** move along the ladder - scrolling to the next/previous rung when the overlay is closed, or paging through translations when it's open.
