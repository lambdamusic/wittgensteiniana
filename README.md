# Wittgensteiniana

Experimental visualizations of Wittgenstein's Tractatus.

> The [Tractatus Logico-Philosophicus](http://en.wikipedia.org/wiki/Tractatus_Logico-Philosophicus) (Latin for "Logical-Philosophical Treatise") is the only book-length philosophical work published by the Austrian philosopher Ludwig Wittgenstein in his lifetime. It was an ambitious project: to identify the relationship between language and reality and to define the limits of science. It is recognized as a significant philosophical work of the twentieth century. […] The Tractatus employs a notoriously austere and succinct literary style. The work contains almost no arguments as such, but rather declarative statements which are meant to be self-evident. The statements are hierarchically numbered, with seven basic propositions at the primary level (numbered 1–7), with each sub-level being a comment on or elaboration of the statement at the next higher level (e.g., 1, 1.1, 1.11, 1.12).

## Tech info

This is a Django app which is mirrored in local using `wget` and rendered as a static site in /docs.

Requires **Python 3.9** (Django is pinned `<4.0.0` in `requirements.txt`). See `requirements.txt`.

The `docs` folder contains a static version of the site, which is accessible at: 

* http://wittgensteiniana.michelepasin.org/


## Status

This project is not actively developed anymore, but every once in a while new visualizations may be added.

Background info: https://www.michelepasin.org/projects/wittgensteiniana/index.html


## Changelog

### 2026-08-14

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
