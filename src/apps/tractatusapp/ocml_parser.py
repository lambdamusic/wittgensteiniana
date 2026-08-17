"""
Minimal S-expression reader for the legacy OCML knowledge base
(src/static/legacy/philosurfical-crm-kb2/), plus thin extractors for the two
data shapes needed to populate the Topic model: CONCEPT instances (from
ideas-tractatus-concepts.lisp) and expression-interpretation instances (from
events-my-tractatus-interpretation.lisp).

Not regex-based: the source has escaped quotes inside description strings,
and `;;` comments that themselves contain balanced parens (seen elsewhere in
the KB), both of which break naive line/regex parsing.
"""

import re


def _strip_comments(text):
	"""Removes `#| ... |#` block comments (which hide disabled/dead instances
	in the KB) and `;;...` line comments (but not `;` inside a string literal).
	Must run before tokenizing.
	"""
	text = re.sub(r'#\|.*?\|#', ' ', text, flags=re.DOTALL)
	out_lines = []
	for line in text.split('\n'):
		result = []
		in_string = False
		i = 0
		while i < len(line):
			ch = line[i]
			if ch == '"' and (i == 0 or line[i - 1] != '\\'):
				in_string = not in_string
				result.append(ch)
			elif ch == ';' and not in_string:
				break
			else:
				result.append(ch)
			i += 1
		out_lines.append(''.join(result))
	return '\n'.join(out_lines)


def _tokenize(text):
	"""Tokenizes into '(', ')', string literals (escaped quotes resolved), and
	bare symbols. String literals are returned as ('str', value) tuples so
	callers can tell them apart from bare symbols.
	"""
	tokens = []
	i, n = 0, len(text)
	while i < n:
		ch = text[i]
		if ch in '()':
			tokens.append(ch)
			i += 1
		elif ch.isspace():
			i += 1
		elif ch == '"':
			j = i + 1
			buf = []
			while j < n and text[j] != '"':
				if text[j] == '\\' and j + 1 < n:
					buf.append(text[j + 1])
					j += 2
				else:
					buf.append(text[j])
					j += 1
			tokens.append(('str', ''.join(buf)))
			i = j + 1
		else:
			j = i
			while j < n and not text[j].isspace() and text[j] not in '()':
				j += 1
			tokens.append(text[i:j])
			i = j
	return tokens


def read_forms(text):
	"""Parses OCML source text into a list of top-level forms. Each form is a
	nested list of symbol strings and ('str', value) tuples, one entry per
	top-level `(...)` in the source.
	"""
	tokens = _tokenize(_strip_comments(text))
	forms = []
	stack = []
	current = None
	for tok in tokens:
		if tok == '(':
			if current is not None:
				stack.append(current)
			current = []
		elif tok == ')':
			finished = current
			if stack:
				current = stack.pop()
				current.append(finished)
			else:
				forms.append(finished)
				current = None
		else:
			if current is not None:
				current.append(tok)
	return forms


def _sym(tok):
	"""Unwraps a token (symbol string or ('str', value) tuple) into plain text."""
	return tok[1] if isinstance(tok, tuple) else tok


def _find_slot(slots, name):
	"""Case-insensitive lookup of a `(slot-name value...)` form within a slot
	list. Returns the list of value tokens (possibly empty), or None if the
	slot isn't present at all.
	"""
	name = name.lower()
	for slot in slots:
		if isinstance(slot, list) and slot and isinstance(slot[0], str) and slot[0].lower() == name:
			return slot[1:]
	return None


def _is_def_instance(form, type_name):
	if not isinstance(form, list) or len(form) < 3:
		return False
	head, _name, typ = form[0], form[1], form[2]
	return (
		isinstance(head, str) and head.lower() == 'def-instance'
		and isinstance(typ, str) and typ.lower() == type_name.lower()
	)


# Kept lower-case in _titlecase() unless first/last word - standard title-case
# style guide exceptions (articles, coordinating conjunctions, short prepositions).
_MINOR_WORDS = {
	'a', 'an', 'the', 'and', 'but', 'or', 'nor', 'for', 'so', 'yet',
	'of', 'in', 'on', 'at', 'to', 'by', 'as', 'with', 'from', 'into',
	'over', 'under', 'about',
}


def _titlecase(text):
	"""Title-cases a hyphenated/space-separated phrase (e.g. "propositions-of-science"
	or "LAW-OF-CAUSALITY", both forms occur in the source depending on when the
	concept was authored) into a consistent display form, e.g. "Propositions of
	Science", keeping minor words lower-case unless they're the first or last word.
	"""
	words = text.replace('-', ' ').split()
	if not words:
		return text
	last = len(words) - 1
	out = []
	for i, w in enumerate(words):
		lw = w.lower()
		if 0 < i < last and lw in _MINOR_WORDS:
			out.append(lw)
		else:
			out.append(lw[:1].upper() + lw[1:])
	return ' '.join(out)


def parse_concepts(filepath):
	"""Extracts CONCEPT instances from ideas-tractatus-concepts.lisp.

	Returns a list of dicts: {external_id, name, description, defined_by_view}.
	external_id is the lower-cased OCML instance name (e.g.
	"prop-of-science-concept-g558368"), used for idempotent re-import. name is
	title-cased for consistent display (source data mixes ALL-CAPS and
	lower-hyphenated common names depending on authoring era).
	"""
	with open(filepath, encoding='utf-8') as f:
		text = f.read()

	concepts = []
	for form in read_forms(text):
		if not _is_def_instance(form, 'CONCEPT'):
			continue
		name = form[1]
		slots = form[3] if len(form) > 3 and isinstance(form[3], list) else []

		common_name = _find_slot(slots, 'has-common-name')
		description = _find_slot(slots, 'has-description')
		view = _find_slot(slots, 'defined-by-view')

		raw_name = _sym(common_name[0]) if common_name else name
		concepts.append({
			'external_id': name.lower(),
			'name': _titlecase(raw_name),
			'description': _sym(description[0]) if description else '',
			'defined_by_view': _sym(view[0]) if view else '',
		})
	return concepts


def _sentence_number(sentence_id):
	"""Strips the 'sentence-' prefix, and the redundant 'SENTENCE-' infix typo
	seen on some instances (e.g. 'sentence-SENTENCE-6.36' -> '6.36'), to
	recover the bare proposition number matching TextUnit.name.
	"""
	s = sentence_id
	for _ in range(2):
		if s.lower().startswith('sentence-'):
			s = s[len('sentence-'):]
	return s


def parse_interpretations(filepath):
	"""Extracts expression-interpretation instances from
	events-my-tractatus-interpretation.lisp.

	Returns a list of dicts: {sentence_number, concept_ids}. concept_ids is a
	(possibly empty) list of lower-cased OCML identifiers, matching
	parse_concepts()'s external_id.
	"""
	with open(filepath, encoding='utf-8') as f:
		text = f.read()

	interpretations = []
	for form in read_forms(text):
		if not _is_def_instance(form, 'expression-interpretation'):
			continue
		slots = form[3] if len(form) > 3 and isinstance(form[3], list) else []

		interprets = _find_slot(slots, 'interprets')
		has_interpretation = _find_slot(slots, 'has-interpretation') or []
		if not interprets:
			continue

		interpretations.append({
			'sentence_number': _sentence_number(_sym(interprets[0])),
			'concept_ids': [_sym(c).lower() for c in has_interpretation],
		})
	return interpretations
