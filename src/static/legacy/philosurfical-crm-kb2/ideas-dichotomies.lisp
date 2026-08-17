;; dychotomiessss
;; all the common names are without AND

;; WE NEED A FUNCTION TO USE THE DYCHOTOMIES TO SEARCH THE TEXT, IF THE CONCEPTS THEMSELVES ARE NOT LINKED TO THE PARAGRAPHS!!!!



(in-package ocml)



(def-instance SIMPLE-AND-COMPLEX-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name simple-complex)
 (contains-concept simple-by-wittgenstein complex-by-wittgenstein)))

(def-instance TRUE-FALSE-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name true-false)
 (contains-concept true-by-wittgenstein  false-by-wittgenstein )))

(def-instance ORDINARY-AND-PERFECT-LANGUAGE-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ORDINARY-AND-PERFECT-LANGUAGE)
 (contains-concept ordinary-language-by-wittgenstein  perfect-language-by-wittgenstein )))

(def-instance INTERNAL-EXTERNAL-DICHOTOMY-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name INTERNAL-EXTERNAL)
 (contains-concept internal-property-by-wittgenstein  external-property-by-wittgenstein )))

(def-instance IDENTITY-AND-DIFFERENCE-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name identity-difference)
 (contains-concept IDENTITY-by-wittgenstein  DIFFERENCE-by-wittgenstein )))

(def-instance AFFIRMATION-NEGATION-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name affirmation-negation)
 (contains-concept AFFIRMATION-by-wittgenstein  NEGATION-by-wittgenstein )))

(def-instance TAUTOLOGY-AND-CONTRADICTION-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name tautology-contradiction)
 (contains-concept TAUTOLOGY-by-wittgenstein  CONTRADICTION-by-wittgenstein )))

(def-instance NAMING-AND-DESCRIBING-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name naming-describing)
 (contains-concept NAMING-by-wittgenstein  DESCRIBING-by-wittgenstein )
 (has-description "For Wittgenstein, names and propositions differ in important respects. Names have meaning (<i>Bedeutung</i>), i.e. they are the representatives of objects. Propositions, on the other hand, do not have meaning of this kind. They, and only they, have 'sense' (<i>Sinn</i>); that is, they represent, or describe, possible facts. So we get to know the meaning of names through understanding the sense of propositions which contain them.")))

(def-instance LOGICAL-ILLOGICAL-by-wittgenstein dichotomy  ;; IN THIS CASE WE DIDNT REPRESENT THE CONCEPTS
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name logical-illogical)))

(def-instance ESSENTIAL-ACCIDENTAL-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name essential-accidental)
 (contains-concept ESSENTIAL-by-wittgenstein  ACCIDENTAL-by-wittgenstein )))

;; I need to say that these two are related!!!! maybe add a slot at the phil-idea level? is-similar-to...

(def-instance SAY-SHOW-DICHOTOMY-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name say-show)
 (contains-concept showing-CONCEPT-G109201 saying-CONCEPT-G103019   )))

(def-instance INEXPRESSIBLE-INEFFABLE-DICHOTOMY-by-wittgenstein dichotomy
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name inexpressible-ineffable)
 (contains-concept INEXPRESSIBLE-by-wittgenstein  INEFFABLE-by-wittgenstein   )))

