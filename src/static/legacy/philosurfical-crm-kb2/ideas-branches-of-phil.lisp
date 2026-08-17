
;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10; Package: OCML;   -*-

;; for now I instantiated only generic fields of studies (which are defined extensionally)




;; non philosophical areas
(def-instance mathematics scientific-discipline)

(def-instance psychology scientific-discipline)

(def-instance neurophysiology scientific-discipline)

(def-instance history humanistic-discipline)

(def-instance history-of-religions humanistic-discipline
((sub-area-of history)))

(def-instance geometry scientific-discipline)

(def-instance law humanistic-discipline)

(def-instance politics humanistic-discipline)



;; CORE philosophical areas
(def-instance ethics branch-of-philosophy)   

(def-instance logic branch-of-philosophy)

(def-instance aesthetics Branch-of-philosophy
"noun: -art- the branch of philosophy dealing with beauty and taste (emphasizing the evaluative criteria 
that are applied to art); traditional aesthetics assumed the existence of universal and timeless 
criteria of artistic value")

(def-instance epistemology Branch-of-philosophy
"noun: The philosophical theory of knowledge")

(def-instance moral-philosophy Branch-of-philosophy
"Branch of ethics that studies the human conduct")

(def-instance metaphysics Branch-of-philosophy
"noun: The philosophical study of being and knowing"
((related-to-area ontology)))

(def-instance ontology Branch-of-philosophy
"noun: The metaphysical study of the nature of being and existence"
((related-to-area metaphysics)))





;; secondary or derived areas

(def-instance Etiology Branch-of-philosophy
"noun: The philosophical study of causation"
((related-to-area epistemology)))

(def-instance metaphilosophy Branch-of-philosophy
"Branch of philosophy that studies the sybject, methods, matter and aims of philosophy")

(def-instance Philosophy-of-language Branch-of-philosophy
"Branch of philosophy that studies language"
((related-to-area logic)))

(def-instance Philosophy-of-logic Branch-of-philosophy
((related-to-area logic)))

(def-instance Bioethics Branch-of-philosophy
"noun: The branch of ethics that studies moral values in the biomedical sciences"
((sub-area-of ethics)))

(def-instance Philosophy-of-art Branch-of-philosophy
"Subclass of aesthetics"
((sub-area-of aesthetics)))

(def-instance Philosophy-of-literature Branch-of-philosophy
"Subclass of aesthetics")

(def-instance Axiology Branch-of-philosophy
"noun: The study of values and value judgments"
((related-to-area ethics)))

(def-instance philosophy-of-law Branch-of-philosophy
"noun: The branch of philosophy concerned with the law and the principles that lead courts 
to make the decisions they do"
((related-to-area law)))

(def-instance philosophy-of-psychology Branch-of-philosophy
((related-to-area psychology)))

(def-instance philosophy-of-film Branch-of-philosophy
((related-to-area aestethics)))

(def-instance Philosophy-of-sexuality Branch-of-philosophy)

(def-instance Philosophy-of-technology Branch-of-philosophy)

(def-instance Philosophy-of-religion Branch-of-philosophy
"branch of philosophy that studies the religious phenomena"
((related-to-area history-of-religions)))

(def-instance Cosmology Branch-of-philosophy
"noun: The metaphysical study of the origin and nature of the universe"
((related-to-area metaphysics)))

(def-instance Philosophy-of-mind Branch-of-philosophy
"branch of philosophy that studies the mind and its features"
((related-to-area neurophysiology)))

(def-instance Philosophy-of-history Branch-of-philosophy
"Branch of philosophy that studies the sense and direction in history"
((related-to-area history)))

(def-instance Philosophy-of-science Branch-of-philosophy)

(def-instance Political-philosophy Branch-of-philosophy
"Branch of philosophy that studies politics"
((related-to-area politics)))



;; academic disciplines 

(def-instance Modern-philosophy Branch-of-philosophy)

(def-instance Twentieth-century-philosophy Branch-of-philosophy)

(def-instance Medieval-Renaissance-philosophy Branch-of-philosophy)

(def-instance Eastern-philosophy Branch-of-philosophy)

(def-instance Ancient-philosophy Branch-of-philosophy)

(def-instance Nineteenth-century-philosophy Branch-of-philosophy)

(def-instance Introductory-philosophy Branch-of-philosophy)

(def-instance History-of-philosophy Branch-of-philosophy)




;; problem-areas defined by wittgenstein
(def-instance tractatus-ontology field-of-study
((defined-by-view first-wittgenstein-philosophy)
 (sub-area-of ontology)))

(def-instance ph-of-language-by-wittgenstein field-of-study
((defined-by-view first-wittgenstein-philosophy)
 (sub-area-of philosophy-of-language)))

(def-instance logic-by-wittgenstein field-of-study
((defined-by-view first-wittgenstein-philosophy)
 (sub-area-of logic)))

(def-instance epistemology-by-wittgenstein field-of-study
((defined-by-view first-wittgenstein-philosophy)
 (sub-area-of logic)))

(def-instance ethics-by-wittgenstein field-of-study
((defined-by-view first-wittgenstein-philosophy)
 (sub-area-of logic)))









#|

(def-class Problem-area (Philosophical-idea)
((contains-problem :type Problem)
 (has-central-problem :type problem)
 (specified-by-criteria :type thesis)
 (related-to-area :type Problem-area) 
 (sub-area-of :type Problem-area) 
 (has-sub-area :type Problem-area)))


(def-class Field-of-study (Problem-area)
((defined-by-view :type View)
 (has-exemplar-theory :type theory)
 (has-methodology :type method)))

(def-class generic-field-of-study (Problem-area)
"Field of study defined extensionally"
((defined-by-view :type
                  (setofall ?v (and (has-sub-area ?gf ?f)
                                    (defined-by-view ?f ?v))))))

 
(def-class Humanistic-discipline (generic-field-of-study))

(def-class Scientific-discipline (generic-field-of-study))

(def-class Branch-of-philosophy (Humanistic-discipline)
"The set of established research areas in philosophy, classic subjects of teaching and investigation.
We have taken most of them are taken from Wordnet and from http://www.routledge.com/Philosophy/subjects")


|#