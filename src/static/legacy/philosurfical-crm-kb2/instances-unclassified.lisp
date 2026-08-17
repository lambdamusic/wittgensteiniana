
(in-package ocml)


;; ***** other information objects *******


(def-instance my-induction-definition sentence
((has-string-content "The belief that things that have happened regularly in the past will continue to happen in the future: the future will resemble the past.")
 (has-form written-english)))

(def-instance intro-The-Foundations-of-Arithmetic sentence
((has-string-content "In the enquiry that follows, I have kept to three fundamental principles:
    always to separate sharply the psychological from the logical, the subjective from the objective;
    never to ask for the meaning of a word in isolation, but only in the context of a proposition
    never to lose sight of the distinction between concept and object.")
 (part-of-expression The-Foundations-of-Arithmetic-english-edition)
 (has-form written-english)))




(def-instance Ockhams-razor-maxime maxime
((has-description "Entia non sunt multiplicanda praeter necessitatem - entities should not be multiplied beyond necessity")
 (was-made-by ockams)))  ;; the person apparently is not defined



