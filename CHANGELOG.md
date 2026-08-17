# Changelog

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
