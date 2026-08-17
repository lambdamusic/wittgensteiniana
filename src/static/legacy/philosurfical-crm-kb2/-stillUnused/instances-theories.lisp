;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10; Package: OCML;   -*-

;; naming convention: all the compound words are hyphenated (no underscores used) !


(in-ontology philosophy)




;; V I E W S  ******** T H E O R I E S   ********  T H E S I S  ****** P H . S Y S T E M S  *********


(def-instance PICTURE-THEORY-OF-LANGUAGE theory
((belongs-to-phil-system first-wittgenstein-philosophy)
 (belongs-to-school reductionism)  ;;cause the proposition is a truth-function of its constituents
 (influences-view neopositivism)
 (belongs-to-field philosophy-of-language)))  ;; for the moment I don't specify
;; a theory has related concepts... picture, proposition, representation.. etc...


(def-instance NEWTON-MECHANICS theory)

(def-instance logical-objects-theory theory
((has-referred-author frege)))

(def-instance theory-of-concepts theory
((has-referred-author frege)))


(def-instance HERTZ-CONCEPTION view)

(def-instance theory-of-extensions theory
((has-referred-author frege)))

(def-instance theory-of-types theory
((has-referred-author BERTRAND-RUSSELL)))

(def-instance theory-of-descriptions theory
((has-referred-author BERTRAND-RUSSELL)))


(def-instance tautology-theory theory
((belongs-to-phil-system first-wittgenstein-philosophy)))

(def-instance monadology-philosophy philosophical-system
((has-referred-author Gottfried-Leibniz)))

(def-instance KANT-PHILOSOPHY philosophical-system)

(def-instance first-witt-philosophy philosophical-system
((has-referred-author Wittgenstein)))

(def-instance newtonian-mechanics philosophical-system   ;; here we can see how with philosophy we mean weltaunschaung!!!!
((has-referred-author Newton)))

(def-instance PRIMITIVE-SIGN-THEORY theory
((has-referred-author Gottlob-Frege)
 (belongs-to-field logic philosophy-of-language)))

(def-instance Pre-established-harmony-theory theory ;; see paragraph-2.0123
((has-referred-author Gottfried-Leibniz)
 (has-string-description "The appropriate nature of each substance brings it about that what happens to one corresponds to what happens to all the others, without, however, their acting upon one another directly.")))

(def-instance form-and-matter-as-compound-theory theory)   ;; la teoria del sinolo di aristotele, vicino al concetto di forma logica
;; in a. la forma e materia esistono sempre congiunte nel sinolo, allo stesso modo in w. abbiamo la forma logica sempre embedded in una immagine, mai esistente di per se canche quando esiste come immagine logica (pensiero), il punt;; o piu "puro" di raffigurazione.
;; webdocument about this at http://faculty.washington.edu/smcohen/320/zeta17.htm
;; original text at http://classics.mit.edu/Aristotle/metaphysics.1.i.html

(def-instance DARWIN-evolution-theory theory
((has-referred-author darwin)))


(def-instance solipsism school-of-thought)
(def-instance realism school-of-thought)
(def-instance reductionism school-of-thought)
(def-instance neopositivism school-of-thought)

;; la teoria dell'atomismo logico e' relata in primis ai concetti dell ANALISI e del SEMPLICE-COMPLESSO  ..





;;;; PRINCIPLEs **************


(def-instance induction-principle principle
((defines-key-concept induction)
 (belongs-to-field metaphysics epistemology)))

(def-instance PRINCIPLE-OF-OBJECT-REPRESENTATION principle      ;; who said it? it's related to 4.0312  <<-- it's probably frege
((defines-key-concept representation)
 (has-referred-author Ludwig-Wittgenstein)
 (belongs-to-field philosophy-of-language)))


;; all the following could be subsumed under class "laws of thought"... check http://en.wikipedia.org/wiki/Law_of_thought!!!!
(def-instance PRINCIPLE-OF-INDISCERNIBLES principle 
((has-referred-author Gottfried-Leibniz)
 (belongs-to-field ontology)
 (has-string-description "Two things are identical if and only if they share the same properties")))

;; the following two are a good example of the representation problems i got.. how do I refer both of them to the same content?????
(def-instance Leibniz-principle-of-sufficient-reason principle
((has-referred-author Gottfried-Leibniz)
 (belongs-to-field ontology)
 (supports-view determinism)
 (opposes-view fatalism)
 (has-string-description "There must be a sufficient reason [often known only to God] for anything to exist, for any event to occur, for any truth to obtain.")))

(def-instance Schopenauer-principle-of-sufficient-reason principle
((has-referred-author Arthur-Schopenhauer)
 (belongs-to-field ontology)))

(def-instance Principle-of-Sufficient-Reason-of-Becoming principle
((defines-key-concept becoming)  ;; il divenire... 
 (has-referred-author Arthur-Schopenhauer)
 (part-of-thesis Schopenauer-principle-of-sufficient-reason)
 (belongs-to-field ontology)
 (has-string-description "If a new state of one or several real objects appears, another state must have preceded it upon which the new state follows regularly")))

(def-instance Principle-of-Sufficient-Reason-of-Knowing principle
((defines-key-concept knowledge truth)
 (has-referred-author Arthur-Schopenhauer)
 (part-of-thesis Schopenauer-principle-of-sufficient-reason)
 (belongs-to-field epistemology)
 (has-string-description "If a judgment is to express a piece of knowledge, it must have a sufficient ground. By virtue of this quality, it receives the predicate true. Truth is therefore the reference of a judgment to something different therefrom."))) 

(def-instance Principle-of-Sufficient-Reason-of-Being principle
((defines-key-concept space time)  ;; not sure
 (has-referred-author Arthur-Schopenhauer)
 (part-of-thesis Schopenauer-principle-of-sufficient-reason)
 (belongs-to-field ontology)
 (has-string-description "The position of every object in space and the succession of every object in time is conditioned by another object's position in space and succession in time.")))

(def-instance Principle-of-Sufficient-Reason-of-Acting principle
((defines-key-concept will)
 (has-referred-author Arthur-Schopenhauer)
 (part-of-thesis Schopenauer-principle-of-sufficient-reason)
 (belongs-to-field metaphysics)
 (has-string-description "Every human decision is the result of an object that necessarily determines the human's will by functioning as a motive.")))


(def-instance RUSSELL-AXIOM-OF-INFINITY principle
((has-referred-author Bertrand-Russell)
 (belongs-to-theory )
 (belongs-to-field logic)
 (has-string-description )))


(def-instance Ockham-razor  principle)  



(def-instance principle-of-determination principle)  ;; from Spinoza - linked to the logical independence concept.... not linked to paragraphs yet


(def-instance CONTEXT-PRINCIPLE principle
((has-referred-author Gottlob-Frege)))









#|
(def-class View (Conceptual-object)
((defines-concept :type Concept)
 (uses-concept :type Concept)
 (tackles-problem :type Problem)  ;; we also have to specify the subrelations <solves> and <solutes>
 (attacked-by-problem :type Problem) 
 (belongs-to-field :type Field-of-study :min-cardinality 1)
 (typifies :type intellectual-movement)
 (influences-View :type View)  ;; since the other View is associated to another area, the cross-influences are guaranteed (?) 
 (influenced-by-View :type View) ;; influence is something related to the "inspiration"
 (supports-View :type View)  ;; mutually excluding... + inverses somewhere!
 (opposes-View :type View)
 (uses-Method :type Method) ;; inverses not specified
 (has-supporting-argument :type Argument)
 (has-opposing-argument :type Argument)))
;; need to ponder whether all these relations are correct at the View level...


(def-class Thesis (View)
((belongs-to-theory :type Theory)
 (belongs-to-school :type school-of-thought)))
|#