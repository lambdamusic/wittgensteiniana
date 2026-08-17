;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10; Package: OCML;   -*-



(def-instance NEGATION-PROBLEM-by-wittgenstein definitory-problem)
#|((has-supportive-view first-witt-philosophy )
 (is-tackled-by-View first-witt-philosophy)
 (is-tackled-by-argument  )
 (exists-in-area logic philosophy-of-language)
 (related-to-problem )))|#

(def-instance SUBSTANCE-PROBLEM-by-wittgenstein problem)
#|((has-supportive-view )
 (is-tackled-by-View first-witt-philosophy)
 (is-tackled-by-argument argument-for-substance  )
 (exists-in-area ontology metaphysics)
 (related-to-problem )))|#


(def-instance shopenauer-problem-of-will-by-wittgenstein problem)   ;; define better this one
#|((has-supportive-view schopenauer-philosophy)
 (is-tackled-by-View first-witt-philosophy)
 (is-tackled-by-argument  )
 (exists-in-area metaphysics ethics)
 (related-to-problem )))|#


#|
(def-class Problem (Philosophical-idea)
((contains-concept :type Concept)
 (has-problem-type :type problem-type)
 (exists-in-area :type Problem-area)
 (has-supportive-view :type View) 
 (related-to-problem :type Problem)
 (derives-from-problem :type Problem)
 (has-equivalent-meaning-as :type problem)
 (has-resolutive-method :type Method)
 (defined-by-argument :type Argument)
 (is-tackled-by-argument :type Argument)
 (is-tackled-by-View :type View) 
 (attacks-View :type View)
 (linked-to-fact :type Temporal-entity)))
|#