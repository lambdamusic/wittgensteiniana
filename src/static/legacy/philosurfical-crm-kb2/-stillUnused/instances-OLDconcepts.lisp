

#|

;; ---------------------------- C O N C E P T S-----------------------------------


(def-instance fact concept
((defined-by first-wittgenstein-philosophy)))

(def-instance world concept
((defined-by first-wittgenstein-philosophy)))

(def-instance thing concept
((defined-by first-wittgenstein-philosophy)))

(def-instance positive-fact concept
((defined-by first-wittgenstein-philosophy)
 (is-specialization-of fact)))   ;;; here we have to decide: concepts vs dychotomie
                             ;; then also: sublasses of fact????  related to other concepts?
(def-instance negative-fact concept
((defined-by first-wittgenstein-philosophy)
  (is-specialization-of fact)))

(def-instance atomic-fact concept
((defined-by first-wittgenstein-philosophy)
  (is-specialization-of fact)
  (is-related-to atomic))) 

(def-instance state-of-affairs concept
((defined-by first-wittgenstein-philosophy)))

(def-instance independence concept
((defined-by first-wittgenstein-philosophy)))

(def-instance positive concept
((defined-by first-wittgenstein-philosophy)))
(def-instance negative concept
((defined-by first-wittgenstein-philosophy)))

(def-instance simple concept   ;;;; dychotomy also here!!!!
((defined-by first-wittgenstein-philosophy)
 (is-related-to atomic)
 (is-related-to primitive)
 (is-opposed-to complex)))
(def-instance complex concept
((defined-by first-wittgenstein-philosophy
 (is-opposed-to simple)))

(def-instance atomic concept        ;;;; this concept is related to "simple"
((defined-by first-wittgenstein-philosophy)))

(def-instance primitive concept        ;;;; this concept is related to "simple"
((defined-by first-wittgenstein-philosophy)))

(def-instance reality concept
((defined-by first-wittgenstein-philosophy)))


;;.......


(def-instance object concept
((defined-by first-wittgenstein-philosophy)))

(def-instance logical-object concept
((defined-by first-wittgenstein-philosophy)))

(def-instance logical-connectives concept
((defined-by first-wittgenstein-philosophy)
 (is-specialization-of logical-object)))

(def-instance logical-constants concept
((defined-by first-wittgenstein-philosophy)
  (is-specialization-of logical-object)))

(def-instance true concept
((defined-by first-wittgenstein-philosophy)
  (is-specialization-of logical-object)))

(def-instance false concept
((defined-by first-wittgenstein-philosophy)
  (is-specialization-of logical-object)))

(def-instance truth-possibilities concept
((defined-by first-wittgenstein-philosophy)))

(def-instance truth-conditions concept
((defined-by first-wittgenstein-philosophy)))



(def-instance name concept
((defined-by first-wittgenstein-philosophy)))

(def-instance logical-form concept
((defined-by first-wittgenstein-philosophy)))



(def-instance god concept
((defined-by first-wittgenstein-philosophy)))

(def-instance substance concept
((defined-by first-wittgenstein-philosophy)))

(def-instance picture concept
((defined-by first-wittgenstein-philosophy)))



(def-instance sign concept
((defined-by first-wittgenstein-philosophy)))

(def-instance language concept
((defined-by first-wittgenstein-philosophy)))

(def-instance language-limits concept
((defined-by first-wittgenstein-philosophy)))

(def-instance everyday-language concept
((defined-by first-wittgenstein-philosophy)))

(def-instance ego concept
((defined-by first-wittgenstein-philosophy)))

(def-instance law-of-nature concept
((defined-by first-wittgenstein-philosophy)))

(def-instance science concept
((defined-by first-wittgenstein-philosophy)))   ;;not sure whether this is a field-of-study in witt.'s discourse

(def-instance induction concept
((defined-by first-wittgenstein-philosophy)))

(def-instance causality concept
((defined-by first-wittgenstein-philosophy)))

(def-instance inference concept
((defined-by first-wittgenstein-philosophy)))

(def-instance sinnlos concept
((defined-by first-wittgenstein-philosophy)
 (has-the-same-meaning-as without-sense)))

(def-instance without-sense concept
((defined-by first-wittgenstein-philosophy)))

(def-instance unsinnig concept
((defined-by first-wittgenstein-philosophy)
 (has-the-same-meaning-as nonsensical)))

(def-instance nonsensical concept
((defined-by first-wittgenstein-philosophy)))

(def-instance will concept
((defined-by first-wittgenstein-philosophy)))

(def-instance sense concept
((defined-by first-wittgenstein-philosophy)))

(def-instance value concept
((defined-by first-wittgenstein-philosophy)))



(def-instance ineffable concept
((defined-by first-wittgenstein-philosophy)))

(def-instance mystical concept
((defined-by first-wittgenstein-philosophy)))

(def-instance death concept
((defined-by first-wittgenstein-philosophy)))



(def-instance form concept   ;;dichotomy... what are they really??
((defined-by first-wittgenstein-philosophy)
 (is-complementary-with content)))
(def-instance content concept
((defined-by first-wittgenstein-philosophy)
 (is-complementary-with form)))

(def-instance property concept
((defined-by first-wittgenstein-philosophy)))

(def-instance internal-property concept
((defined-by first-wittgenstein-philosophy)
 (is-specialization-of property)
 (is-opposed-to external-property)))
(def-instance external-property concept
((defined-by first-wittgenstein-philosophy)
 (is-specialization-of property)
 (is-opposed-to internal-property)))


(def-instance logic-independence concept
((defined-by first-wittgenstein-philosophy)
 (is-specialization-of independence)))

(def-instance experience concept
((defined-by first-wittgenstein-philosophy)))

(def-instance a-priori concept
((defined-by first-wittgenstein-philosophy)
 (is-opposed-to a-priori)))
(def-instance a-posteriori concept
((defined-by first-wittgenstein-philosophy)
 (is-opposed-to a-posteriori)))

(def-instance structure concept
((defined-by first-wittgenstein-philosophy)
 (is-opposed-to form)))
;;; actually here is together with form ....  is the same form as above? so another dichotomy????

(def-instance proposition concept
((defined-by first-wittgenstein-philosophy)))

(def-instance function concept
((defined-by first-wittgenstein-philosophy)))

(def-instance truth-function concept
((defined-by first-wittgenstein-philosophy)
 (specialization-of function)))

(def-instance tautology concept
((defined-by first-wittgenstein-philosophy)
 (specialization-of proposition)
 (is-opposed-to contradiction)))

(def-instance contradiction concept
((defined-by first-wittgenstein-philosophy)
 (specialization-of proposition)
 (is-opposed-to tautology)))


(def-instance propositional-attitude concept
((defined-by first-wittgenstein-philosophy)
 (specialization-of proposition)))  ;; not sure about this...

(def-instance elementary-proposition concept
((defined-by first-wittgenstein-philosophy)
 (specialization-of proposition)))

(def-instance complex-proposition concept
((defined-by first-wittgenstein-philosophy)
 (specialization-of proposition)))

(def-instance operation concept
((defined-by first-wittgenstein-philosophy)))  ;; how is this related to function? ask andrea

(def-instance operation analysis
((defined-by first-wittgenstein-philosophy)))   ;; is the same as operation?

(def-instance subjectivity concept
((defined-by first-wittgenstein-philosophy)

(def-instance subject concept
((defined-by first-wittgenstein-philosophy)
 (has-same-meaning-as subjectivity)))

(def-instance metaphysical-subject concept
((defined-by first-wittgenstein-philosophy)
 (specialization-of subject)
 (is-similar-to solipsism)))   ;; although this is not similarity between concepts, but relation 
;; between a concept and a doctrine...? or maybe we should define solipsism as both a doctrine (generic) 
;;  and a concept(as defined by a philosopher)?

(def-instance psychological-subject concept
((defined-by first-wittgenstein-philosophy)
 (specialization-of subject)
 (is-similar-to soul)))

(def-instance what-can-be-said concept
((defined-by first-wittgenstein-philosophy)
 (is-opposed-to what-cannot-be-said)))
(def-instance what-cannot-be-said concept
((defined-by first-wittgenstein-philosophy)
 (is-opposed-to what-can-be-said)))

(def-instance what-can-be-thought concept
((defined-by first-wittgenstein-philosophy)
 (is-opposed-to what-cannot-be-thought)))
(def-instance what-cannot-be-thought concept
((defined-by first-wittgenstein-philosophy)
 (is-opposed-to what-can-be-thought)))


|#
