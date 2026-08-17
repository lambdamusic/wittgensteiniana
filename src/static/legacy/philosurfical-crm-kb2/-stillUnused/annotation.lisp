(in-package ocml)

(in-ontology philosophy)


(def-instance foundations-of-mathematics-problem problem
((belongs-to-area philosophy-of-mathematics)))



;; a few instances relates to this problem

(def-instance Formalism School-of-thought
"noun: The doctrine that formal structure rather than content is what should be represented  ")

(def-instance mathematical-formalism Contextualized-school-of-thought
((is-about-school formalism)
 (exists-in-field-of-study philosophy-of-mathematics mathematics)
 (has-exemplar-author david-hilbert)
 (opposes-view mathematical-intuitionism)
 (tackles-problem foundations-of-mathematics-problem)))


(def-instance Intuitionism School-of-thought
"noun: (philosophy) the doctrine that knowledge is acquired primarily by intuition  ")

(def-instance mathematical-intuitionism Contextualized-school-of-thought
((is-about-school intuitionism)
 (exists-in-field-of-study philosophy-of-mathematics mathematics)
 (has-exemplar-author Brouwer)
 (opposes-view mathematical-formalism)
 (tackles-problem foundations-of-mathematics-problem)))


(def-instance Logicism School-of-thought
" doctrine that assigns to formal logic a primary position in the definition of something else")

(def-instance mathematical-logicism Contextualized-school-of-thought
((is-about-school logicism)
 (exists-in-field-of-study philosophy-of-mathematics mathematics)
 (has-exemplar-author Gottlob-frege Rudolf-Carnap)
 (opposes-view mathematical-formalism)
 (tackles-problem foundations-of-mathematics-problem)))

(def-instance Realism School-of-thought
" doctrine that assigns reality to some entities commonly conceived as non-physical   ")

(def-instance mathematical-realism Contextualized-school-of-thought
((is-about-school realism)
 (exists-in-field-of-study philosophy-of-mathematics mathematics)
 (has-exemplar-author Paul-Erdos kurt-godel)
 (opposes-view mathematical-empiricism)
 (tackles-problem foundations-of-mathematics-problem)))

(def-instance Platonism School-of-thought
" the philosophical doctrine that abstract concepts exist independent of their names  ")

(def-instance mathematical-platonism Contextualized-school-of-thought
((is-about-school platonism)
 (exists-in-field-of-study philosophy-of-mathematics mathematics)
 (has-exemplar-author kurt-godel plato Pitagora)
 (opposes-view mathematical-empiricism)
 (is-similar-to-view mathematical-realism)
 (tackles-problem foundations-of-mathematics-problem)))


(def-instance Empiricism School-of-thought
"the doctrine that knowledge derives from experience  " )

(def-instance mathematical-empiricism Contextualized-school-of-thought
((is-about-school empiricism)
 (exists-in-field-of-study philosophy-of-mathematics mathematics)
 (has-exemplar-author Willard-Van-Orman-Quine Hilary-Putnam J-S-Mill)
 (opposes-view mathematical-realism mathematical-platonism)
 (tackles-problem foundations-of-mathematics-problem)))



;; the authors are not defined

(def-instance gettier-problem problem
((belongs-to-area epistemology)
 (has-referred-author edmund-gettier)
 (is-expressed-by-question gettier-problem-question)))

(def-instance gettier-problem-question question
((has-string-content "Is justified true belief knowledge?")
 (has-language english)))


(def-instance molyneux-problem problem
((belongs-to-area epistemology philosophy-of-mind)
 (has-referred-author william-molyneux)
 (is-expressed-by-question molyneux-problem-question)
 (is-tackled-by-view Locke-philosophy)))  ;; to define

(def-instance molyneux-problem-question question
((has-string-content "if a man born blind, and able to distinguish by touch between a cube and a globe, were made to see, could he now tell by sight which was the cube and which the globe, before he touched them?")
 (has-language english)))


(def-instance moral-luck-problem problem
((belongs-to-area ethics )
 (has-referred-author )
 (is-expressed-by-question moral-luck-problem-question)))

(def-instance moral-luck-problem-question question
((has-string-content "A poor person is born into a poor family, and has no other way to feed himself so he steals his food. Another person, born into a very wealthy family, does very little but has ample food and does not need to steal to get it. Should the poor person be more morally blameworthy than the rich person?")
 (has-language english)))


(def-instance evil-problem problem
((belongs-to-area ethics )
 (has-referred-author )
 (is-expressed-by-question evil-problem-question-1 evil-problem-question-2 )))

(def-instance evil-problem-question-1 question
((has-string-content "Is the concept of evil logically consistent with a benevolent, omnipotent creator? That is to say, is it logically consistent that evil and God may simultaneously exist?")
 (has-language english)))

(def-instance evil-problem-question-2 question
((has-string-content "If the existence of God and evil are indeed consistent logically, does the existence of evil nonetheless prove the absence of God?")
 (has-language english)))


(def-instance moore-disbelief-problem problem
((belongs-to-area philosophy-of-language )
 (has-referred-author G-E-Moore)
 (is-expressed-by-question moore-disbelief-problem-question-1 )))

(def-instance moore-disbelief-problem-question-1 question
((has-string-content "What is th truth value of the statement \"Albany is the capital of New York, but I don't believe it\"?")
 (has-language english)))


(def-instance induction-problem problem
((belongs-to-area epistemology )
 (has-referred-author )
 (is-expressed-by-question induction-problem-question )))

(def-instance induction-problem-question question
((has-string-content "What can make us logically conclude that the future will always resemble the past?")
 (has-language english)))




(def-instance mathematical-objects-problem existence-problem
((belongs-to-area philosophy-of-mathematics)
 (has-referred-author )
 (is-expressed-by-question mathematical-objects-problem-question)
 (related-to-problem foundations-of-mathematics-problem)))

(def-instance mathematical-objects-problem-question question
((has-string-content "What are numbers, sets, groups, points, etc.? Are they real objects or are they simply relationships that necessarily exist in all structures?")
 (has-language english)))



(def-instance sorites-paradox-problem definitory-problem    ;;; or is it a paradox?
((belongs-to-area metaphysics)
 (has-referred-author )
 (is-expressed-by-question sorites-paradox-problem-question)))

(def-instance sorites-paradox-problem-question question
((has-string-content "Is a bale of hay still a bale of hay if you remove one straw? If so, is it still a bale of hay if you remove another straw? If you continue this way, you will eventually deplete the entire bale of hay, and the question is: at what point is it no longer a bale of hay?")
 (has-language english)))


(def-instance mind-body-problem relational-problem   
((belongs-to-area philosophy-of-mind)
 (has-referred-author )
 (is-expressed-by-question mind-body-problem-question)))

(def-instance mind-body-problem-question question
((has-string-content "What is the relationship between the human body and the human mind?")
 (has-language english)))


(def-instance demarcation-problem relational-problem   
((belongs-to-area philosophy-of-science)
 (has-referred-author KArl-popper )
 (is-expressed-by-question demarcation-problem-question)))

(def-instance demarcation-problem-question question
((has-string-content "What is the criterion which would enable us to distinguish between the empirical sciences on the one hand, and mathematics and logic as well as \"metaphysical\" systems on the other?")
 (has-language english)))



;; here some ph. of language comes in

(def-instance universals-problem existence-problem   
((belongs-to-area philosophy-of-language)
 (has-referred-author  )
 (is-expressed-by-question universals-problem-question)))

(def-instance universals-problem-question question
((has-string-content "Do abstract concepts, or universals, exist?")
 (has-language english)))

;; various positions tackle this problem.. nominalism.. etc...