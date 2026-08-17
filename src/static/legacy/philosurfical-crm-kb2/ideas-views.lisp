;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10; Package: OCML;   -*-





;; theories **


(def-instance PICTURE-THEORY-OF-LANGUAGE-by-wittgenstein theory
((part-of-system first-wittgenstein-philosophy)
 (exists-in-area philosophy-of-language))) 


(def-instance NEWTON-MECHANICS-theory-by-wittgenstein theory
((exists-in-area philosophy-of-language)))

(def-instance logical-objects-theory-by-wittgenstein theory
((was-made-by Gottlob-Frege)
 (exists-in-area logic)))

(def-instance theory-of-concepts-by-wittgenstein theory
((was-made-by Gottlob-Frege)
 (exists-in-area logic)))


(def-instance HERTZ-CONCEPTION-by-wittgenstein theory
((was-made-by Hertz)
 (exists-in-area philosophy-of-language)))

(def-instance theory-of-extensions-by-wittgenstein theory
((was-made-by Gottlob-Frege)))

(def-instance theory-of-types-by-wittgenstein theory
((was-made-by BERTRAND-RUSSELL)))

(def-instance theory-of-descriptions-by-wittgenstein theory
((was-made-by BERTRAND-RUSSELL)))


(def-instance tautology-theory-by-wittgenstein theory
((part-of-system first-wittgenstein-philosophy)))



(def-instance PRIMITIVE-SIGN-THEORY-by-wittgenstein theory
((was-made-by Gottlob-Frege)
 (exists-in-area logic philosophy-of-language)))

(def-instance Pre-established-harmony-theory-by-wittgenstein theory ;; see paragraph-2.0123
((was-made-by Gottfried-Leibniz)
 (has-description "The appropriate nature of each substance brings it about that what happens to one corresponds to what happens to all the others, without, however, their acting upon one another directly.")))

(def-instance form-and-matter-as-compound-theory-by-wittgenstein theory)   ;; la teoria del sinolo di aristotele, vicino al concetto di forma logica
;; in a. la forma e materia esistono sempre congiunte nel sinolo, allo stesso modo in w. abbiamo la forma logica sempre embedded in una immagine, mai esistente di per se canche quando esiste come immagine logica (pensiero), il punt;; o piu "puro" di raffigurazione.
;; webdocument about this at http://faculty.washington.edu/smcohen/320/zeta17.htm
;; original text at http://classics.mit.edu/Aristotle/metaphysics.1.i.html

(def-instance DARWIN-evolution-theory-by-wittgenstein theory
((was-made-by darwin)))



;; la teoria dell'atomismo logico e' relata in primis ai concetti dell ANALISI e del SEMPLICE-COMPLESSO  ..


;;;;  new stuff

(def-instance my-analytic-interpre School-of-thought-interpretation  
((carried-out-by michele-pasin)
 (interprets Analytic-philosophy)
 (has-main-thesis )
 (classifies-view )
 (has-exemplar-theory frege-philosophical-system)
 (has-main-exponent Gottlob-frege)))
 
 
 
(def-instance interpret-001 view-interpretation
((carried-out-by michele-pasin)
 (interprets intuitionism-math-thesis)
 (opposes-view logicism-thesis)))
 
 (def-instance interpret-002 Distinction-interpretation
 ((carried-out-by michele-pasin)
 (interprets kant-analitic-synthetic-distinction)
 (contrasts-with frege-analitic-synthetic-distinction)))
 
 
 ;;;;;
 
(def-instance frege-philosophy-by-wittgenstein philosophical-system
 ((has-common-name "the philosophy of Frege")
  (was-made-by gottlob-frege)
  (has-thesis logicism-thesis)))
 
(def-instance kant-philosophy-by-wittgenstein philosophical-system
 ((has-common-name "the philosophy of Kant")
  (was-made-by immanuel-kant)
  (has-thesis intuitionism-math-thesis)))
  
(def-instance Leibniz-philosophy-by-wittgenstein philosophical-system
((has-common-name "the philosophy of Leibniz")
 (was-made-by Gottfried-Leibniz)))

  
(def-instance first-wittgenstein-philosophy philosophical-system
((was-made-by Ludwig-Wittgenstein)
 (has-common-name "the philosophy of the Tractatus")))
 


  
  
(def-instance logicism-thesis thesis
  ((has-description "The truths of mathematics can all be derived from logic")))
  
(def-instance intuitionism-math-thesis thesis
  ((has-description "The truths of mathematics rely on intuition")))






;;;; PRINCIPLEs **************


(def-instance induction-principle-by-wittgenstein principle
(;;(defines-concept induction)
 (exists-in-area metaphysics epistemology)))

(def-instance PRINCIPLE-OF-OBJECT-REPRESENTATION-by-wittgenstein principle      ;; who said it? it's related to 4.0312  <<-- it's probably frege
(;;(defines-concept representation)
 (was-made-by Ludwig-Wittgenstein)
 (exists-in-area philosophy-of-language)))


;; all the following could be subsumed under class "laws of thought"... check http://en.wikipedia.org/wiki/Law_of_thought!!!!
(def-instance PRINCIPLE-OF-INDISCERNIBLES-by-wittgenstein principle 
((was-made-by Gottfried-Leibniz)
 (exists-in-area ontology)
 (has-description "Two things are identical if and only if they share the same properties")))

;; the following two are a good example of the representation problems i got.. how do I refer both of them to the same content?????
(def-instance Leibniz-principle-of-sufficient-reason principle
((was-made-by Gottfried-Leibniz)
 (exists-in-area ontology)
 ;;(supports-view determinism)
 ;;(opposes-view fatalism)
 (has-description "There must be a sufficient reason [often known only to God] for anything to exist, for any event to occur, for any truth to obtain.")))

(def-instance Schopenauer-principle-of-sufficient-reason principle
((was-made-by Arthur-Schopenhauer)
 (exists-in-area ontology)))

(def-instance Principle-of-Sufficient-Reason-of-Becoming principle
(;;(defines-concept becoming)  ;; il divenire... 
 (was-made-by Arthur-Schopenhauer)
 (part-of-thesis Schopenauer-principle-of-sufficient-reason)
 (exists-in-area ontology)
 (has-description "If a new state of one or several real objects appears, another state must have preceded it upon which the new state follows regularly")))

(def-instance Principle-of-Sufficient-Reason-of-Knowing principle
(;;(defines-concept knowledge truth)
 (was-made-by Arthur-Schopenhauer)
 (part-of-thesis Schopenauer-principle-of-sufficient-reason)
 (exists-in-area epistemology)
 (has-description "If a judgment is to express a piece of knowledge, it must have a sufficient ground. By virtue of this quality, it receives the predicate true. Truth is therefore the reference of a judgment to something different therefrom.")))

(def-instance Principle-of-Sufficient-Reason-of-Being principle
(;;(defines-concept space time)  ;; not sure
 (was-made-by Arthur-Schopenhauer)
 (part-of-thesis Schopenauer-principle-of-sufficient-reason)
 (exists-in-area ontology)
 (has-description "The position of every object in space and the succession of every object in time is conditioned by another object's position in space and succession in time.")))

(def-instance Principle-of-Sufficient-Reason-of-Acting principle
(;;(defines-concept will)
 (was-made-by Arthur-Schopenhauer)
 (part-of-thesis Schopenauer-principle-of-sufficient-reason)
 (exists-in-area metaphysics)
 (has-description "Every human decision is the result of an object that necessarily determines the human's will by functioning as a motive.")))


(def-instance RUSSELL-AXIOM-OF-INFINITY principle
((was-made-by Bertrand-Russell)
 (part-of-theory )
 (exists-in-area logic)
 (has-description )))


(def-instance Ockham-razor-by-wittgenstein  principle)  



(def-instance principle-of-determination-by-wittgenstein principle)  ;; from Spinoza - linked to the logical independence concept.... not linked to paragraphs yet


(def-instance CONTEXT-PRINCIPLE-by-wittgenstein principle
((was-made-by Gottlob-Frege)))


(def-instance monism-by-wittgenstein school-of-thought)







#|
(def-class View (Conceptual-object)
((defines-concept :type Concept)
 (uses-idea :type Philosophical-idea)
 (interprets-fact :type temporal-entity)
 (typifies :type intellectual-movement)
 (tackles-problem :type Problem) 
 (attacked-by-problem :type Problem) 
 (influences-View :type View)  
 (influenced-by-View :type View) ;; influence is something related to the "inspiration"
 (supports-View :type View)  ;; mutually excluding... + inverses somewhere!
 (opposes-View :type View)
 (is-similar-to-view :type View)
 (has-supporting-argument :type Argument)
 (has-opposing-argument :type Argument)))


(def-class Thesis (View)
((part-of-thesis :type Thesis)
 (part-of-theory :type Theory)
 (part-of-school :type school-of-thought)
 (part-of-system :type Philosophical-system)
 (exists-in-area :type problem-area)))

|#