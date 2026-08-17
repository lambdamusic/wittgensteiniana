
;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10; Package: OCML;   -*-

;; naming convention: all the compound words are hyphenated (no underscores used) !


(in-ontology philosophy)




;; rhetorical figures

(def-instance ladder-metaphor metaphor
((has-referred-author Ludwig-Wittgenstein)
 (used-in-view first-witt-philosophy)))  ;; it was inspired by schopenauer..

(def-instance SIMPLEX-SIGILLUM-MOTTO maxime
((has-referred-author )
 (used-in-view first-witt-philosophy)))



;; methods 

(def-instance TRUTH-TABLE-METHOD method)





;; described conceptual objects

(def-instance anticipation-on-logical-form Described-conceptual-object
((is-about-conceptual-object logical-form)
 (has-description-type anticipation)))

(def-instance anticipation-on-picture-theory Described-conceptual-object
((is-about-conceptual-object picture-theory)
 (has-description-type anticipation)))


