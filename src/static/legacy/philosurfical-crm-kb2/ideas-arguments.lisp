;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10; Package: OCML;   -*-

;; naming convention: all the compound words are hyphenated (no underscores used) !





;;; argumentsssss

(def-instance ARGUMENT-CONTRA-INDUCTION-by-wittgenstein argument)

(def-instance ARGUMENT-CONTRA-FREGE-by-wittgenstein argument)

(def-instance ARGUMENT-AGAINST-FREGE-by-wittgenstein argument)

(def-instance ARGUMENT-CONTRA-THEORY-OF-TYPES-by-wittgenstein argument)

(def-instance ARGUMENT-CONTRA-INDUCTION-LAW-by-wittgenstein argument)

(def-instance ARGUMENT-CONTRA-RUSSELL-by-wittgenstein argument)

(def-instance ARGUMENT-AGAINST-RUSSELL-by-wittgenstein argument)

(def-instance argument-for-substance-by-wittgenstein argument)
#|((belongs-to-view first-witt-philosophy)
 (tackles-problem substance-problem)
 (has-associated-concept substance)))|#


(def-instance argument-contra-theory-of-types-by-wittgenstein argument) ;; from wittg. contra russell

#|

(def-class Argument-entity (Philosophical-idea)
"Class used to group all the argument-related entities"
((belongs-to-view :type View)
 (has-associated-concept :type concept)
 (has-associated-event :type argument-event)))



(def-class Argument (Argument-entity)
"Reification of the argument-event class - it represents the famous argumentative knots in the history of philosophy"
((supports-Idea :type Philosophical-idea)
 (contrasts-Idea :type Philosophical-idea)
 (tackles-problem :type Problem)
 (defines-problem :type problem)
 (uses-method :type argumentative-method)
 (has-argument-part :type argument-part)))
|#