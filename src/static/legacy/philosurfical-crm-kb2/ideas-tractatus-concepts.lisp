
;; all the instances of the tractatus-related concepts (interpretations in another file)


(in-package ocml)




;; new concepts  4/9/07 ------------------------


(def-instance   silence-CONCEPT-G652391    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  silence) 
(has-description "Traditionally, the concept of silence refers to the mystical attitude towards the ineffability of the supreme entity. For example, this is the case in Bonaventura, <i>Itinerarium mentis in Deum, VII, 5.</i> Another example is Jaspers, who describes silence as the attitude towards the Transcendent being, <i>Philosophie, III, p.233 </i>. According to the Tractatus, silence is the only answer we could give to the problems of life. ")
))

(def-instance   eternal-life-CONCEPT-G642969    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  eternal-life) 
(has-description "Being immortal or having a soul that survives death solves nothing: it just extends the limits of our world and life. What we are really looking for is a way of <i> transcending</i> them, but this is precluded to us.")
))

(def-instance   limit-life-CONCEPT-G633547    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  limit-of-life) 
(has-description "The concept of <i>limit</i> is a key one in the Tractatus: as it is for the limits of language, we often speak about the limits of life as a concept we could firmly grasp - while instead we can only see them reflected from the inside of our experience, as a noumenical entity we cannot transcend")
))

(def-instance   prop-aesthetics-CONCEPT-G624125    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  propositions-of-aesthetics) 
(has-description "According to Wittgenstein, the propositions of aesthetics, as well as the propositions of ethics, cannot be put into words because they make <i>judgements of value</i>. Therefore, they are clearly <i>nonsensical</i>")
))

(def-instance   prop-ethics-CONCEPT-G614703    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  propositions-of-ethics)
(has-description "According to Wittgenstein, the propositions of aesthetics, as well as the propositions of ethics, cannot be put into words because they make <i>judgements of value</i>. Therefore, they are clearly <i>nonsensical</i>") 
))

(def-instance   action-CONCEPT-G605281    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  action)
(has-description "With this term we refer to the human capability of acting")
))

(def-instance   NECESSARY-CONCEPT-G595859    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  necessary) 
(has-description "What is necessary, it is so only by virtue of logic")
))


(def-instance   form-prop-science-CONCEPT-G567160    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  form-of-the-propositions-of-science) 
(has-description "The law of causality and many other scientific principles, such as Newton's axioms, according to Wittgenstein are neither empirical generalizations nor tautologies; rather, they provide a <i>way of talking</i> about the world. As such, they are neither true or false, but they state the <i>a priori forms</i> into which all the other the propositions of science must be cast.")
))

(def-instance   prop-of-science-CONCEPT-G558368    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  propositions-of-science) 
(has-description "The proposition of science are just a <i>description</i> of the world, not a prescription of how the world should be or behave. They do not belong to logic, because they make claims about experience and they do not hold a priori. The particular propositions of natural science describe <i>facts</i> and, since they can be true or false, they are <i>the only propositions with a sense</i>. On the contrary, the abstract laws of science do not describe any specific fact, but are just insights about the <i>forms</i> the propositions describing facts can have")
))

(def-instance   laws-of-logic-CONCEPT-G549576    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  laws-of-logic) 
(has-description "Logic imposes a structure on the world which is the only existing necessity - there are no laws of logic, intended as <i>laws of inference</i> (as Russell and Frege had stated) that tells us how logic works. Instead, whatever is ruled out by logic is ruled out because it is impossible and inconceivable.")
))



(def-instance   logical-order-CONCEPT-G540784    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  logical-order) 
(has-description "One of the main assumptions of Frege and Russell was that the everyday language <i>hides</i> the true logical formal of language, therefore an adequate process of <i>analysis</i> was needed in order to bring order to the complex system of language. According to Wittgenstein instead, such analysis is not needed cause natural language is already in a perfect 'logical order'.")
))

;; i checked the sentence-interpretations till here (going down)

(def-instance   form-logical-proof-CONCEPT-G531992    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  form-of-the-logical-proof) 
(has-description "The propositions of logic do not have to be deduced by applying some rules of inference to other propositions: their being tautologies or contradictions is evident. Rather, says Wittgenstein 6.1264, they give us the form of logical proof.")
))

(def-instance   abstraction-CONCEPT-G523200    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  abstraction) 
(has-description "The propositions of mathematics are abstractions, that is, they are fundamentally stating the equivalence of two terms")
))

(def-instance   equation-CONCEPT-G514408    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  equation) 
(has-description "An equation is a typical proposition of mathematics")
))

(def-instance   propositions-mathematics-CONCEPT-G505616    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  propositions-of-mathematics)
(has-description "The propositions of mathematics are abstractions, that is, they are fundamentally stating the equivalence of two terms. As such, they cannot be true or false and they belong to the realm of the pseudo-propositions") 
))

(def-instance   logical-proof-CONCEPT-G496824    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  logical-proof)
(has-description "Since the proposition of logic are senseless, we do not need to <i>prove</i> them. This may be necessary only in complicated cases where a proposition being a tautology is not immediately evident 6.1262. This kind of proof just shows the real form of a proposition and it completely differs from proving the truth of a proposition with a sense (which comes down to showing how this latter derives from another proposition we already know to be true)") 
))

(def-instance   number-CONCEPT-G488032    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  number) 
(has-description "Number, as all the other abstraction of mathematics, are <i>pseudo-concepts</i>. They can be derived from the successive application of operations - this application being a method of logic") 
))

(def-instance   application-operation-CONCEPT-G479240    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  application-of-an-operation) 
(has-description "It is the process by which, from a set of elementary propositions, we can derive more complex propositions") 
))

(def-instance   essence-CONCEPT-G470448    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  essence) 
(has-description "In general, the essence of something is any possible answer given to the question <i>what is X?</i>; in a more specific meaning, the essence of something is the necessary essence of that thing (also called <i>substance</i>), that is, what the thing cannot not be. Wittgenstein never talks about <i>essence</i> in general, but of the <i>essence of a proposition</i>, the <i>essence of the world</i> etc.") 
))


;;...

(def-instance   philosophical-self-CONCEPT-G461648    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  philosophical-self) 
(has-description "The philosophical self, or metaphysical subject, is not the self that we usually associate to the experiences of our everyday life. It is instead related to the awareness of the limits of the world and of our language: analogously to the fact that I cannot see my eye anywhere in the visual field, the self is not part of the world, but it is pressuposed by it as its limit. This theme has been previously explored by other philosophers Wittgenstein was most probably aware of, such as Schopenhauer and Hume. 5.641") 
))

(def-instance   human-body-CONCEPT-G453036    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  human-body)
(has-description "The body is treated as representative of the material part of the human being, in opposition to the psychological part 5.641")  
))

(def-instance   totality-elem-prop-CONCEPT-G444424    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  totality-of-elementary-propositions) 
(has-description "The totality of elementary propositions, which can be either true or false, that is, describing existing state of affairs or non-existing ones.") 
))

(def-instance   logical-experience-CONCEPT-G435812    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  logical-experience) 
(has-description "We cannot learn a priori what sort of objects or elementary propositions there are: logic is prior to any particular experience, but not prior to the fact of experience itself, it is the <i>shape</i> experience takes. The hyphotesis of a logical experience is totally misleading.")
))


(def-instance   inner-limit-language-CONCEPT-G427192    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  inner-limit-of-language) 
(has-description "Tautology and contradiction are defined by Wittgenstein as, respectively, the inner and the outer limit of what can be expressed with language.")
))

(def-instance   outer-limit-language-CONCEPT-G418895    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  outer-limit-of-language) 
(has-description "Tautology and contradiction are defined by Wittgenstein as, respectively, the inner and the outer limit of what can be expressed with language.")
))

(def-instance   generality-sign-CONCEPT-G410598    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  generality-sign) 
(has-description "Frege and Russell employed and gave a specific logical importance to the signs which express generality ('for all', also cfr. quantifiers logic) and identity ('equal to'). Wittgenstein's argument attacks this conception and claims that the usage of such signs is nonsensical, as the language of logic has implicit the capability of expressing these meanings")
))

(def-instance   essence-proposition-CONCEPT-G402301    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  essence-of-a-proposition) 
(has-description "The essence of a proposition is the general propositional form, that is, the form all propositions have in common. In opposition to the conceptions of Frege and Russell, this is also the <i>sole logical constant</i>.")
))

(def-instance   prop-of-logic-CONCEPT-G394004    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  propositions-of-logic) 
(has-description "The proposition of logic are neither true or false, but senseless (they <i>lack sense</i>). They cannot describe the world, but they implicitly show us how the world (and language) is, namely they show its logical structure.")
))

(def-instance   negation-operation-CONCEPT-G385707    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  negation-operation) 
(has-description "The negation operation is the one by which all propositions can be derived from the elementary ones. Accordingly, the general propositional form shows <i>the way</i> the negation operation should be employed for such purposes.")
))

(def-instance   operation-CONCEPT-G377410    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  operation) 
(has-description "According to Wittgenstein, an operation can produce a new proposition from some already existing ones, which he calls the <i>bases</i> of the operation. 5.21")
))


;; ....

(def-instance   follow-CONCEPT-G369105    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  what-follows-from-a-proposition) 
(has-description "What <i>follows</i> from a proposition is other propositions being true because of the truth value of the first one. This can be possible only is the latter shares all the truth-grounds of the former.")
))

(def-instance   future-predictions-CONCEPT-G361258    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  future-predictions) 
(has-description "Everything in the world is accidental - only logic is necessary. The laws of science have only the power to describe, they do not reflect any sort of necessary truth. Consequently, any attempt to construct predictions about the future relies only on probability.5.1361")
))

(def-instance   laws-inference-CONCEPT-G353411    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  laws-of-inference) 
(has-description "We can infer whether one proposition follows from another from the structure of the propositions themselves: there is no need for <i>laws of inference</i> to tell us how we can and cannot proceed in logical deduction")
))

(def-instance   truth-cond-table-CONCEPT-G345564    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  truth-conditions-table) 
(has-description "The truth-condition table is a propositional sign, a notation used by Wittgenstein for showing that there are no logical objects: the possible combinations of any number of elementary propositions can all be expressed only in terms of their truth-possibilities (without the need of logical operators such as <i>and</i> or <i>or</i>")
))

(def-instance   complete-descr-world-CONCEPT-G337717    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  complete-description-of-the-world)
(has-description "As the only meaningful propositions are the propositions stating the existence or non-existence of state of affairs, the totality of true elementary propositions in a given instant constitutes a complete description of the world.")  
))

(def-instance   totality-existing-soa-CONCEPT-G329870    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  totality-of-existing-state-of-affairs) 
(has-description "The totality of existing state of affairs corresponds to the totality of facts, that is <i>the world</i> as it is in a given moment.")
))

(def-instance   independence-s-o-a-CONCEPT-G322023    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  independence-of-state-of-affairs) 
(has-description "Atomic state of affairs are independent of one another. The existence or non-existence of one atomic state of affairs is independent of the existence or non-existence of any other atomic state of affairs. As a general rule this independence holds only for <i>atomic</i> state of affairs, as state of affairs, in general, are not independent of one another.")
))

(def-instance   independence-ele-prop-CONCEPT-G314176    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  independence-of-elementary-propositions) 
(has-description "Just as the existence or non-existence of any possible state of affairs has no bearing on the existence or non-existence of any other possible state of affairs, so does the truth or falsity of any elementary proposition have no bearing on the truth or falsity of any other elementary proposition")
))

(def-instance   independence-CONCEPT-G306329    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  independence) 
(has-description "Wittgenstein never treats the concept of independence <i>per se</i>, but always gives specific instantiations of it, such as the i. of elementary propositions or the i. of state of affairs.")
))

(def-instance   truth-conditions-CONCEPT-G298482    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  truth-conditions) 
(has-description "The truth-conditions of a complex proposition are the truth-possibilities of the elementary propositions it is composed by, under which the former proposition can be true.")
))


;;...HEREEEEEEEEEEEEEEEEEEE

(def-instance   concept-proper-CONCEPT-G290627    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  concept-proper) 
(has-description "A concept proper, for example 'x is a stone', is something we can meaningfully talk about simply because it erfers to a state of affairs which can be depicted by our language. This notion stands in opposition to the one of <i>formal concept</i>. This latter defines attempts to define the formal properties of an object, of a state of affairs or a fact. As such, they are nonsensical as they try to depict the same form of representation, i.e. the logical form. Examples of formal concepts can be 'two is a number' or 'purple is a color'.")
))

(def-instance   limit-will-CONCEPT-G282960    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  limit-of-the-will) 
(has-description "According to Wittgenstein, the exercise of the human will cannot have any effect on the world itself (intended as the substance of the world), but it can effect the <i>type of</i> world we inhabit, that is, its positive or negative connotation, our (nonsensical) judgements of value towards it and our <i>ethical</i> or <i>aesthetical</i> attitudes.")
))

(def-instance   limit-world-CONCEPT-G275293    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  limit-of-the-world) 
(has-description "The limits of the world match the limits of our language, which themselves depend on the way language is structured: ultimately, the limits of the world lie there where our language stops having a sense, that is, when we try to express the <i>form</i> of language, the logical form. For this reason, nothing <i>in</i> the world can have transcendent value: if it did, it would not be expressible. What is then the common feeling philosophers have, when they think of the world as a <i>limited whole</i>? It is the mystical, the awareness of the ineffability of what is beyond our ability to signify.")
))

(def-instance   limit-CONCEPT-G267626    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  limit) 
(has-description "This concept, although central in the Tractatus, is never dealt with by Wittgenstein <i>per se</i>, but always in a more specific way: he talks, for example, of the limits of language, or the limits of the world.")
))

(def-instance   activity-CONCEPT-G259951    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  activity) 
(has-description "Having stated that most of the propositions and questions of philosophers arise from the fact that we do not understand the logic of our language, Wittgenstein describes the proper philosophical activity as a <i>critique of language</i>. This activity should aim at the clarification, in our everyday language, of what can and cannot be meaningfully said.")
))

(def-instance   role-nat-science-CONCEPT-G252734    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  role-of-natural-science) 
(has-description "In the philosophy of the Tractatus, natural science is the only domain which can provide meaningful propositions, that is, descriptions of the world which can be true or false. A different status have instead the laws of science, because they are not describing any state of affairs and they do not hold a priori, as we tend to think: they express just the <i>form</i> the propositions of science should have.")
))

(def-instance   totality-true-prop-CONCEPT-G245517    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  totality-of-true-propositions) 
(has-description "According to Wittgenstein, since the totality of all existent state of affairs is the world, it derives that the totality of all true elementary propositions is a complete description of the world. This complete description of the world is equivalent to the whole of natural science.")
))

(def-instance   totality-prop-CONCEPT-G238300    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  totality-of-propositions) 
(has-description "It is the sum of all possible propositions - including those ones with sense and those ones without sense or nonsensical. 4.001")
))

(def-instance   truth-value-prop-CONCEPT-G231083    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  truth-value-of-a-proposition) 
(has-description "A proposition is a picture of reality and if it has <i>sense</i>, if it can meaningfully represent reality, it can also have a truth-value depending on whether it represents it truthfully or falsely.")
))

(def-instance   prop-nonsense-CONCEPT-G223866    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  propositions-which-are-nonsense) 
(has-description "Wittgenstein uses the German word <i>unsinnig</i> ('nonsensical') to refer to the propositions of traditional methaphysics and most of philosophy (including his own). In general, a nonsensical proposition is a proposition which is not a truly linguistic representation of the world.")
))

(def-instance   prop-lack-sense-CONCEPT-G216649    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  proposition-which-lack-sense-(senseless)) 
(has-description "Wittgenstein uses the German word <i>sinnloss</i> ('lack sense', 'without sense', 'senseless') to refer to the propositions of logic: they cannot express facts, but they are not nonsensical cause they can express the structure of language and of reality.")
))

(def-instance   philosophical-confusion-CONCEPT-G209432    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  philosophical-confusion) 
(has-description "It is what generates from a fundamental misunderstanding of the logic of language.")
))

(def-instance   logical-structure-CONCEPT-G202215    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  logical-structure) 
(has-description "With this term, Wittgenstein refers to the most authentic structure of everyday language, which is normally disguised by our complicated linguistic conventions. Most of the problems of philosophy result from a misunderstanding of this hidden structure.")
))

;;....

(def-instance   elucidation-CONCEPT-G168267    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  elucidation) 
(has-description "Wittgenstein states that the meanings of primitive signs can be explained by means of what he calls <i>elucidations (Erlauterungen)</i>. By elucidations he means propositions that contain the primitive signs, and which can be understood only if the meanings of those signs are already known. 3.263 3.3  ")
))

(def-instance   meaning-name-CONCEPT-G161230    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  meaning-of-a-name) 
(has-description "Names (primitive signs), according to Wittgenstein, mean <i>objects</i>. Their meaning cannot be grasped by an analyses of the propositions where they appear, but just by means of <i>elucidations</i>.")
))



;;..

(def-instance   possible-situation-CONCEPT-G140111    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  possible-situation) 
(has-description "A possible situation is another way of referring to a state of affairs, since it can be true (thus becoming a fact) or false")
))

(def-instance   illogical-thought-CONCEPT-G133929    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  illogical-thought) 
(has-description "In Wittgenstein, the fundamental parallelism of language, thought and world is based on the fact that they all share the same form, i.e. the logical form. Given this view, it is impossible to think of a thought which is illogical.")
))

(def-instance   situation-CONCEPT-G127747    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  situation) 
(has-description "A situation is a fact, and it is what a picture can represent. From the point of view of the picture, the situation represented is the sense of the picture.")
))

(def-instance   comparison-reality-CONCEPT-G121565    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  comparison-with-reality) 
(has-description "The comparison with reality is the only method we could use for telling whether a picture is true or false.")
))

(def-instance   sense-picture-CONCEPT-G115383    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  sense-of-the-picture) 
(has-description "The sense of the picture is the (possible) situation it represents.")
))

(def-instance   showing-CONCEPT-G109201    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  showing) 
(has-description "Wittgentein has argued that we can understand a proposition without an explanation because, by virtue of being a picture, a proposition represents a possible fact. He also expresses the proposition's representation of a possible fact by saying that a proposition <i>shows</i> its sense. On the other hand, a proposition also shows how things stand if it is true: more precisely, it <i>says</i> that they do so stand. In general, the distinction between showing and saying reflects the one between the logical form (which we cannot speak about) and the 'specific features' of reality (which we can describe with language).")
))

(def-instance   saying-CONCEPT-G103019    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  saying) 
(has-description "Wittgentein has argued that we can understand a proposition without an explanation because, by virtue of being a picture, a proposition represents a possible fact. He also expresses the proposition's representation of a possible fact by saying that a proposition <i>shows</i> its sense. On the other hand, a proposition also shows how things stand if it is true: more precisely, it <i>says</i> that they do so stand. In general, the distinction between showing and saying reflects the one between the logical form (which we cannot speak about) and the 'specific features' of reality (which we can describe with language).")
))

(def-instance   element-fact-CONCEPT-G96837    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  element-of-a-fact) 
(has-description "A fact is a set of state of affairs, and a state of affairs is a combination of objects. It follows that fact too are combinations of objects. Within this context Wittgenstein also says that when we represent facts by means of pictures, the elements of the picture correspond to the elements of the fact.")
))

(def-instance   elements-picture-CONCEPT-G90655    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  element-of-a-picture) 
(has-description "A picture is a combination of elements which correspond to the elements of the fact it (tries to) represent")
))

(def-instance   possibility-structure-CONCEPT-G84473    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  possibility-of-the-structure-of-the-picture) 
(has-description "Wittgenstein calls the possibility of the various picture's elements to be in a structure the <i>pictorial form</i>")
))

(def-instance   pictorial-form-CONCEPT-G78291    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  pictorial-form) 
(has-description "Wittgenstein calls the possibility of the various picture's elements to be in a structure the <i>pictorial form</i>. This is what a picture of a fact must have in common with reality, in order to be capable of depicting it meaningfully.")
))

(def-instance   structure-picture-CONCEPT-G72109    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  structure-of-the-picture) 
(has-description "The specific way the elements of a picture are combined into is called by Wittgenstein the structure of the picture.")
))


;;...


(def-instance   soa-not-the-case-CONCEPT-G65919    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  state-of-affairs-which-are-not-the-case) 
(has-description "Wittgenstein also calls negative facts the state of affairs which are not the case, namely, which do not exist.")
))

(def-instance   soa-the-case-CONCEPT-G59737    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  state-of-affairs-which-are-the-case) 
(has-description "Wittgenstein also calls positive facts the state of affairs which are the case, namely, which exist.")
))

(def-instance   negative-fact-CONCEPT-G53480    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  negative-fact) 
(has-description "Wittgestein calls a negative fact a state of affairs which is not the case. However, according to other sections of the Tractatus, the concept of a negative fact may also seem a contradiction in terms, cause a fact is often defined an <i>existing</i> state of affairs.")
))

(def-instance   positive-fact-CONCEPT-G47298    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  positive-fact) 
(has-description "A positive fact is a fact which exists, i.e. a state of affairs which is the case.")
))

(def-instance   structure-of-soa-CONCEPT-G41116    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  structure-of-the-state-of-affairs) 
(has-description "The structure of a state of affairs is given by the specific way the <i>objects</i> which compose it are combined together")
))

(def-instance   property-CONCEPT-G34847    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  property) 
(has-description "Wittgenstein talks of various kinds of properties, usually referring them to the concept of <i>object</i>")
))

(def-instance   material-property-CONCEPT-G28665    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  material-property-of-the-world) 
(has-description "The material properties of the world are determined by objects being combined with other objects in cetain state of affairs; that is, by the objects' <i>external properties</i>.")
))

;;..

(def-instance   logical-possibility-CONCEPT-G366629    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  logical-possibility) 
(has-description "Facts exist in a logical space: this space is also the realm of what is logically possible.")
))

(def-instance   prop-with-a-sense-CONCEPT-G360985    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  proposition-with-a-sense) 
(has-description "The propositions with a sense are for Wittgenstein only the propositions which can be true or false in depicting the world. Among the propositions with a sense, the true propositions with a sense, says Wittgenstein, constitute the whole of natural science (with the exceptions of the laws of natural sceince).")
))

(def-instance   knowing-an-object-CONCEPT-G355238    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  knowing-an-object) 
(has-description "Knowing an object corresponds to knowing all its 'affordances', that it, its possibilites of occurring within certain combinations of objects (e.g. state of affairs). In other words, I must know its <i>internal properties</i>.")
))

(def-instance   knowing-CONCEPT-G349594    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  knowing) 
(HAS-DESCRIPTION  "Wittgenstein speaks of the activity of <i>knowing</i> several times in the Tractatus, with respect to many topics.") 
))

(def-instance   essence-of-things-CONCEPT-G343950    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  essence-of-things) 
(has-description "The essence of things, or essence of an object, is its possibility of constituting states of affairs.")
))

(def-instance   complex-s-o-a-CONCEPT-G338306    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  complex-state-of-affairs) 
(has-description "A complex state of affairs is a collection or sets of state of affairs. The proposition describing a complex state of affairs is the logical product of the propositions describing its constituents simple state of affairs. If this state of affairs are true, the complex state of affairs is a fact.")
))

(def-instance   simple-s-o-a-CONCEPT-G332662    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  simple-state-of-affairs) 
(has-description "A simple state of affairs corresponds to the content of an elementary proposition, and it is essentially a combination of objects.")
))

(def-instance   complex-fact-CONCEPT-G327018    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  complex-fact) 
(has-description "Facts are essentially complex, being the composition of n simple state of affairs which are true. When we talk about <i>atomic or simple<?i> facts, we usually refer to state of affairs, by means of a terminology used by the first english translators of the Tractatus, Ogden and Ramsey (this was not a literal translation of the German, but, although ambiguous, was sanctioned by Wittgenstein himself in one of his letters to the translators).")
))

(def-instance   simple-fact-CONCEPT-G321374    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  simple-fact) 
(has-description "Facts are essentially complex, being the composition of n simple state of affairs which are true. When we talk about <i>atomic or simple<?i> facts, we usually refer to state of affairs, by means of a terminology used by the first english translators of the Tractatus, Ogden and Ramsey (this was not a literal translation of the German, but, although ambiguous, was sanctioned by Wittgenstein himself in one of his letters to the translators).")
))

(def-instance   totality-of-true-s-o-a-CONCEPT-G315730    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  totality-of-true-state-of-affairs) 
(has-description "The totality of true state of affairs, or the totality of facts,  is the world")
))

(def-instance   totality-of-facts-CONCEPT-G310086    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  totality-of-facts) 
(has-description "The totality of true state of affairs, or the totality of facts,  is the world")
))

(def-instance   totality-of-things-CONCEPT-G304442    CONCEPT 
((DEFINED-BY-VIEW  FIRST-WITTGENSTEIN-PHILOSOPHY) 
(HAS-COMMON-NAME  totality-of-things) 
(has-description "The totality of things or objects make up the substance of the world, that is, <i>what there is</i>, as opposed to <i>how things are</i>.")
))



;; end new concepts  ----------------------



(def-instance INEXPRESSIBLE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name INEXPRESSIBLE)
 (has-description "A proposition, Wittgenstein says, represents reality; indeed, propositions can represent the whole of reality. But no proposition can represent logical form - that logical form which is must have in common with reality in order to represent it. For suppose that we were to try to represent logical form; we should have to do this by means of a proposition. This means that we should have to place ourselves, with this proposition, outside logic; and this is impossible. The logical form is the inexpressible.")))

(def-instance LOGICAL-SPACE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LOGICAL-SPACE)
 (has-description "Wittgenstein says that facts (or better, state of affairs) exists in the realm of everything which is logically possible, that is, everything which can be true or false. This 'dimension' is the <i>logical space </i>.")))

(def-instance PRIMITIVE-SIGN-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PRIMITIVE-SIGN)
 (has-description "A primitive sign is a simple symbol - a symbol for names - which cannot be further defined: it is <i>fully analyzed</i>.")))

(def-instance EXPRESSION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name EXPRESSION)
 (has-description "Wittgenstein uses the term <i>expression</i> as an alternative of the term <i>symbol</i>: the two terms mean the same thing, that is, what we perceive thanks to the sign [???].")))

(def-instance CONTRADICTION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name CONTRADICTION)
 (has-description "Contradictions are the propositions of logic characterized by being always false - as such, they are senseless (they 'lack sense) but they show the <i>inner limit of language</i>")))

(def-instance THOUGHT-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name THOUGHT)
 (has-description "The issue of what Wittgenstein means by thought is quite debated: for sure he is not making any psychological claims. He is interested in showing how things are, not in how we perceive things to be. In a letter to Russell (19.8.19), when Russell asked him whether a thought consisted of words, he replied: \"No! But of physical constituents that have the same sort of relation to reality as words\".")))

(def-instance LANGUAGE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LANGUAGE)
 (has-description "Language is constituted by the totality of propositions. Wittgenstein also makes a distinction betweem the ordinary language of everyday conversations, and a perfect language of logic safe from ambiguities.")))

(def-instance NATURAL-SCIENCE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name NATURAL-SCIENCE)
 (has-description "Natural science is the domain of propositions which have sense, with the exclusion of the nonsensical <i>laws</i> of science.")))

#|
(def-instance NEGATIVE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name NEGATIVE)
 (has-description "")))
|#

(def-instance THING-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name THING)
 (has-description "In the Tractatus, it seems that things are the equivalent of objects - with the difference that the former are usually related to facts, while the latter to state of affairs.")))

(def-instance PICTURE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PICTURE)
 (has-description "The notion of picture is a central one in the philosophy of the Tractatus: the whole of language is said to be a picture of reality.")))

(def-instance NONSENSICAL-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name NONSENSICAL)
 (has-description "With the term nonsensical (<i>unsinnig</i>) Wittgenstein refers to the linguistic propositions which cannot properly signify, cause they cannot be true or false.")))

#|
(def-instance PROPOSITIONAL-VARIABLE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PROPOSITIONAL-VARIABLE)
 (has-description "A propositional variable is ")))
|#

(def-instance PROPOSITIONAL-SIGN-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PROPOSITIONAL-SIGN) 
 (has-description "Propositions are communicated by means of propositional signs through modes such as speech, writing or body language.")))

(def-instance STATE-OF-AFFAIRS-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name STATE-OF-AFFAIRS)
 (has-description "State of affairs (also called 'atomic facts') are the most simple kind of facts - they are combinations of objects which can be true or false (existent or not existent).")))

(def-instance TAUTOLOGY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TAUTOLOGY)
 (has-description "A tautology is a proposition whose truth-values are always true: as such, it falls into the set of 'senseless' propositions")))

#|
(def-instance POSITIVE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name POSITIVE)
 (has-description "")))
|#

(def-instance MEANING-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name MEANING)
 (has-description "One of the central issues in the Tractatus is the nature of meaning, and how we grasp it: Wittgenstein claims that only names have meaning, while propositions have sense. The meaning of the name is the object it refers to - however, meaning of names cannot be grasped 'in isolation', but only in the context of a proposition.")))

#|
(def-instance UNSINNIG-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name UNSINNIG)
 (has-description "")))
|#

#|
(def-instance FALSE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FALSE)
 (has-description "")))
|#

(def-instance SENSE-OF-THE-PROPOSITION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SENSE-OF-THE-PROPOSITION)
 (has-description "The sense of the proposition, as the sence of the picture, is the situation (state of affairs) represented by it.")))

(def-instance REPRESENTING-RELATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name REPRESENTING-RELATION)
 (has-description "This is the relation that the elements of a picture must entertain with the elements of a fact, in order to be a valid picture of reality.")))

(def-instance FORMAL-CONCEPT-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FORMAL-CONCEPT)
 (has-description "A concept proper, for example 'x is a stone', is something we can meaningfully talk about simply because it erfers to a state of affairs which can be depicted by our language. This notion stands in opposition to the one of <i>formal concept</i>. This latter defines attempts to define the formal properties of an object, of a state of affairs or a fact. As such, they are nonsensical as they try to depict the same form of representation, i.e. the logical form. Examples of formal concepts can be 'two is a number' or 'purple is a color'.")
))

(def-instance CAUSAL-NEXUS-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name CAUSAL-NEXUS)
 (has-description "Wittgenstein claims that there is no causal nexus, no causal inference between any two facts or events. Indeed, superstition is nothing but belief in the causal nexus.")))

#|
(def-instance TO-SHOW-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TO-SHOW)
 (has-description "")))
|#

(def-instance LIMIT-OF-LANGUAGE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LIMIT-OF-LANGUAGE)
 (has-description "The limits of language are touched, according to Wittgenstein, whenever we want to express the means by which language signifies. Consequently, if we want to stay within those limits we must express only propositions which make claims (true or false) about how things stand in the world; in other words, the propositions of natural science.")))

(def-instance WILL-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name WILL)
 (has-description "The human will is ineffective towards the substance of the world, but it can make our world <i>happy</i> or <i>unhappy</i>.")))

(def-instance TIME-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TIME)
 (has-description "The concepts of space and time are discussed by Wittgenstein only marginally.")))

(def-instance GENERAL-PROPOSITIONAL-FORM-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name GENERAL-PROPOSITIONAL-FORM)
 (has-description "The general propositional form is what all propositions share in common, it is the essence of a proposition")))

(def-instance PROPOSITION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PROPOSITION)
 (has-description "A proposition in Wittgenstein is fundamentally a, true or false, picture of reality. However, sometimes in the text Wittgenstein uses the term 'proposition' for referring to the 'propositional sign', which is the perceived part of a proposition (e.g. the writing on a paper).")))

(def-instance INFERENCE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name INFERENCE)
 (has-description "Since a complex proposition is a truth-function of its elementary constituents, Wittgenstein claims that we can rightly <i>infer</i> other propositions being true or false from the truth or falsity of the first one.")))

(def-instance SENSE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SENSE)
 (has-description "Sense belongs to pictures (propositions, thoughts), and it consists in a true or false relation with reality")))

#|
(def-instance TO-SAY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TO-SAY)
 (has-description "")))
|#

#|
(def-instance NEGATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name NEGATION)
 (has-description "")))
|#

(def-instance SIMPLE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SIMPLE)
 (has-description "The notion of <i>complex</i> (versus <i>simple</i>) is fundamental in Wittgenstein, and in general, in the logical positivism, because these conceptions attempted to reduce the apparent complexity of reality and language into a combination of simple elements.")))

(def-instance LIFE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LIFE)
 (has-description "")))

(def-instance MYSTICAL-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name MYSTICAL)
 (has-description "The awareness of the ineffability of those things that we feel most compelled to understand is what is mystical.")))

(def-instance A-POSTERIORI-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name A-POSTERIORI)
 (has-description "With this term, in epistemology and philosophy of language, we usually refer to those contents of knowledge which are not innate or pre-existing in men, but dependent on experience.")))

(def-instance LOGICAL-FORM-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LOGICAL-FORM)
 (has-description "The logical form is the form of language and of reality - it is in fact what language and reality must have in common for language to be able to be a true or false picture of the world.")))

#|
(def-instance STRUCTURAL-RELATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name STRUCTURAL-RELATION)
 (has-description "")))
|#

#|
(def-instance IDENTITY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name IDENTITY)
 (has-description "")))
|#

(def-instance FORM-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FORM)
 (has-description "Wittgenstein talks of 'form' mainly in relation to the structural properties of the objects constuting the existing state of affairs.")))

;; not used, just in the dychotomoy
(def-instance AFFIRMATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name AFFIRMATION)
 (has-description "")))

(def-instance LAW-OF-CAUSALITY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LAW-OF-CAUSALITY)
 (has-description "Wittgenstein criticizes the existence of a causal nexus in nature, and in general of any law of causality.")))

(def-instance METAPHYSICAL-SUBJECT-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name METAPHYSICAL-SUBJECT)
 (has-description "The philosophical self, or metaphysical subject, is not the self that we usually associate to the experiences of our everyday life. It is instead related to the awareness of the limits of the world and of our language: analogously to the fact that I cannot see my eye anywhere in the visual field, the self is not part of the world, but it is pressuposed by it as its limit. This theme has been previously explored by other philosophers Wittgenstein was most probably aware of, such as Schopenhauer and Hume. 5.641")))

#|
(def-instance LOGICAL-PROPOSITION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LOGICAL-PROPOSITION)
 (has-description "")))
|#

(def-instance DEATH-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name DEATH)
 (has-description "Death is the end of life - as such it is the inner limit of life, and it is not something we can truly experience.")))

(def-instance A-PRIORI-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name A-PRIORI)
 (has-description "With this term, in epistemology and philosophy of language, we usually refer to those contents of knowledge which are innate or pre-existing in men, so they are not dependent on experience.")))

(def-instance PROPOSITIONAL-ATTITUDE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PROPOSITIONAL-ATTITUDE)
 (has-description "A propositional attitude is a proposition of the form 'A says that P' or 'A believes that P'. In such a case, determining the truth value of the proposition seems a quite difficult problem. Wittgenstein's solutions is that in 'A believes that P' there is no real relation between A and the proposition P, and the proposition could be translated into the form 'P' says that 'p'. In other words, there is no 'soul' where thoughts and beliefs reside.")))

(def-instance GOD-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name GOD)
 (has-description "Talking about a God, according to Wittgenstein, clearly belongs to the realm of what cannot be said.")))

#|
(def-instance FORMAL-RELATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FORMAL-RELATION)
 (has-description "")))
|#

#|
(def-instance ANALYSIS-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ANALYSIS)
 (has-description "")))
|#

(def-instance ACCIDENTAL-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ACCIDENTAL)
 (has-description "According to Wittgenstein, the world is constant in its substance (the objects that compose it) but its actual configuration, in terms of which state of affairs exists and which don't exist, is accidental.")))

(def-instance PSYCHOLOGICAL-SUBJECT-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PSYCHOLOGICAL-SUBJECT)
 (has-description "The psychological subject, or self, does not exist as an entity in this world, says Wittgenstein. Although we can meaningfully use the term 'I' in our ordinary language, the self or 'I' cannot be observed in the world, namely it is not a substance. The only way we can talk about a 'self' in philosophy, is by referring to a <i>metaphysical subject</i>.")))

(def-instance COMPLEX-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name COMPLEX)
 (has-description "The notion of <i>complex</i> (versus <i>simple</i>) is fundamental in Wittgenstein, and in general, in the logical positivism, because these conceptions attempted to reduce the apparent complexity of reality and language into a combination of simple elements.")))

#|
(def-instance SINNLOS-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SINNLOS)
 (has-description "")))
|#

(def-instance WORLD-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name WORLD)
 (has-description "The world, stresses Wittgenstein, is the totality of facts (i.e. of existing states of affairs), not of things.")))

(def-instance PROBLEMS-OF-PHILOSOPHY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PROBLEMS-OF-PHILOSOPHY)
 (has-description "One of the main results of Wittgenstein's first philosophy is that most of the problems reputed as 'philosophical' are instead false problems, riddle of our language which tend to generate confusion if not properly analysed.")))

(def-instance INTERNAL-RELATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name INTERNAL-RELATION)
 (has-description "A proposition, Wittgenstein points out, does not seem to be a picture of reality. However, never does musical notation seem at first sight to be a picture of music; yet it is. What must exist, in both cases is an internal relation between the two."))) ;;+4.011 4.014

(def-instance PROBABILITY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PROBABILITY)
 (has-description "The fact that complex propositions are truth functions of elementary ones seems to open the perspective that the 'logic of inference' (based on propositions' truth values) would be the basis for probability. For example, in the case of material implication for two different propositions, there is a case out of three when the implication is false. Instead, Wittgenstein emphasizes that this is only a theoretical procedure; in reality there are no degrees of probability: propositions are either true or false.")))

(def-instance ESSENTIAL-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ESSENTIAL)
 (has-description "Essential is what is necessary to an object or entity, as opposed to what is accidental.")))

(def-instance VALUE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name VALUE)
 (has-description "There is no 'value' in the world, says Wittgenstein, but just accidental facts. If there was a value, it would be expressible, but since there is not it must be 'transcendent' and therefore inexpressible. Ethics and aesthetics belong to the domain of what cannot be said.")))

(def-instance VARIABLE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name VARIABLE)
 (has-description "It is impossible to substitute a syntactical quality for a variable ranging over syntactical objects. In other words, a variable ranging over syntactical objects is itself a syntactical object. And we cannot substitute other entities than objects for syntactical objects. Starting from here, Wittgenstein arrives also at saying that it is impossible to attach a syntactical quality to itself: this logical fact, he claims, is 'the whole theory of types' of Russell.")))

#|
(def-instance WITHOUT-SENSE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name WITHOUT-SENSE)
 (has-description "")))
|#

(def-instance ESSENCE-OF-THE-WORLD-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ESSENCE-OF-THE-WORLD)
 (has-description "If we can give the essence of a proposition, says Wittgenstein, that would be also the essence of the world, because it is the essence of all possible descriptions of it. In a more metaphysical sense, instead, the essence of the world is ineffable and inexpressible, cause we would have to 'bend' language over its limits.")))

(def-instance SOUL-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SOUL)
 (has-description "The soul, as the psychological self, is just an illusion caused by the surface grammar of our language.")))

(def-instance TRUTH-GROUNDS-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TRUTH-GROUNDS)
 (has-description "The truth grounds of a proposition are the truth possibilities under which the proposition comes out true.")))

(def-instance NAME-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name NAME)
 (has-description "In a completely analysed proposition, a name is the simple sign which is given to an object. Wittgenstein also says that the meaning of the name is the object itself (although this meaning becomes apparent only in the context of the proposition).")))

(def-instance STRUCTURAL-PROPERTY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name STRUCTURAL-PROPERTY)
 (has-description "With structural property (of an object) Wittgenstein means the same as with <i>internal property</i> or <i>formal property</i>.")))

(def-instance ROLE-OF-PHILOSOPHY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ROLE-OF-PHILOSOPHY)
 (has-description "Wittgenstein claims that the role of philosophy consists in clarifying language: only by doing so we would finally recognize most of the 'philosophical problems' as a nonsensical attempt to say what can only be shown.")))

#|
(def-instance TRUE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TRUE)
 (has-description "")))
|#

(def-instance UNDERSTANDING-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name UNDERSTANDING)
 (has-description "")))

(def-instance PROJECTIVE-RELATION-by-wittgenstein CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PROJECTIVE-RELATION)
 (has-description "A propositional sign is used as a projection of a possible situation. 'Possible situation' seems to mean 'possible fact', and by 'projection' it is very likely that Wittgenstein's meaning of the term is related to its meaning in projective geometry.")))

(def-instance SELF-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SELF)
 (has-description "")))

(def-instance FACT-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FACT)
 (has-description "A fact (in German <i>Tatsache</i>) is an existing state of affairs.")))

(def-instance EXPERIENCE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name EXPERIENCE)
 (has-description "")))

(def-instance COMPLEX-PROPOSITION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name COMPLEX-PROPOSITION)
 (has-description "A complex proposition is a truth-function of the elementary propositions composing it.")))

(def-instance EXTERNAL-PROPERTY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name EXTERNAL-PROPERTY)
 (has-description "An object has internal and external properties: the internal properties are its logical form, what kind of object it is and how it can combine with other objects in states of affairs. The external properties are what is true of it, what states of affairs it does occur in.")))

(def-instance SYMBOL-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SYMBOL)
 (has-description "Wittgenstein states that we can distinguish the sign from the symbol: in particular, the sign is what can be perceived of a symbol. One and the same sign can be common to two different symbols, which will therefore signify in different ways. For example, the word 'is' figures as the copula, as a sign of identity and as an expression for existence. This ambiguity of the surface grammar of ordinary language constitutes one of the main reasons behind philosophical confusions.")))

(def-instance FORMAL-PROPERTY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FORMAL-PROPERTY)
 (has-description "The concept of formal property has the same meaning as <i>internal property</i>")))

(def-instance SPACE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SPACE)
 (has-description "The concepts of space and time are discussed by Wittgenstein only marginally.")))

(def-instance FORM-OF-REPRESENTATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FORM-OF-REPRESENTATION)
 (has-description "The form of representation is the 'code' used to express the correspondance between a picture and what the picture represents. For example, says Wittgenstein, between a proposition and a fact the form of representation is given by the logical form, which guarantees the correspondance between the elements of the pictures and the elements of the fact.")))

(def-instance IDENTITY-SIGN-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name IDENTITY-SIGN)
 (has-description "Frege and Russell employed and gave a specific logical importance to the signs which express generality ('for all', also cfr. quantifiers logic) and identity ('equal to'). Wittgenstein's argument attacks this conception and claims that the usage of such signs is nonsensical, as the language of logic has implicit the capability of expressing these meanings")))

(def-instance LINGUISTIC-ABILITY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LINGUISTIC-ABILITY)
 (has-description "With this term Wittgenstein refers to man's ability to construct and use languages.")))

(def-instance FREE-WILL-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FREE-WILL)
 (has-description "Given that the causal nexus is illusion and we are not able to do any prediction of the future, Wittgenstein goes further by saying that it is exactly in this accidental world that the will can have some freedom.")))

(def-instance ELEMENTARY-PROPOSITION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ELEMENTARY-PROPOSITION)
 (has-description "An elementary proposition is a proposition stating the existence or non existence of a simple state of affairs (e.g. an 'atomic fact').")))

(def-instance INTERNAL-PROPERTY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name INTERNAL-PROPERTY)
 (has-description "An object has internal and external properties: the internal properties are its logical form, what kind of object it is and how it can combine with other objects in states of affairs. The external properties are what is true of it, what states of affairs it does occur in.")))

(def-instance LOGICAL-PICTURE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LOGICAL-PICTURE)
 (has-description "Just as a spatial picture represents things in a physical space, a logical picture represents things in a logical space. A logical picture represents possible states of affairs. Moreover, Wittgenstein also tells us that a thought is a logical picture of a fact, and as any picture, it can be true or false.")))


(def-instance ISOMORPHISM-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ISOMORPHISM)
 (has-description "In the picture theory of language, language, thought and the world must share a common form, which is the logical form. This isomorphism is what guarantees signification and understanding")))

(def-instance SUBSTANCE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SUBSTANCE)
 (has-description "In philosophy the idea of substance hints at an underlying 'layer' of the world which is unchanging and undestructible. Wittgenstein applies this idea to objects, but in a distorted manner. Objects are unchanging and undestructible, but they are also empty logical forms: we can learn from them nothing about what the world is like until they are combined in states of affairs.")))

(def-instance OBJECT-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name OBJECT)
 (has-description "Objects for Wittgenstein are the components of a state of affair. Every object has a logical form, which determines how it can combine with other objects. The sum total of the objects is the substance of the world.")))

(def-instance DESCRIBING-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name DESCRIBING)
 (has-description "According to Wittgenstein, we can describe by means of propositions only situations (vs objects, which can be only named).")))

(def-instance LAW-OF-INDUCTION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LAW-OF-INDUCTION)
 (has-description "The general claim of induction, that the future will resemble the past, draws a connection between future and past that Wittgenstein claims not to be logical.")))

(def-instance TRUTH-FUNCTION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TRUTH-FUNCTION)
 (has-description "The concept of truth function in Wittgenstein is used to relate complex propositions to elementary ones.")))

(def-instance LAW-OF-NATURE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LAW-OF-NATURE)
 (has-description "Wittgenstein criticizes the absolute value of the law of science - the only true necessity can come from logic. ")))

(def-instance LOGICAL-OBJECT-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LOGICAL-OBJECT)
 (has-description "This term refers to the works of Frege and Russell. Frege builds his entire system from the primitive connective 'not' and 'if-then'. Russell builds his from 'not' and 'or'. Wittgenstein claims that logical objects that are used to define the logical structure of a proposition cannot themselves be representative of any kind of object. The elements of a proposition should hold together on their own strength, and not on the strength of these so-called logical 'objects'.")))

(def-instance CONTENT-BY-WITTGESTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name CONTENT)
 (has-description "Wittgenstein talks about content mainly referring to accidental features of the world, that is, whatever is not constrined by the form of the objects composing it")))


;; naming and describing!
(def-instance NAMING-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name NAMING)
 (has-description "According to Wittgenstein, we can name only objects, not propositions.")))

(def-instance ROLE-OF-LOGIC-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ROLE-OF-LOGIC)
 (has-description "Since the propositions of logic 'say nothing', but show that they are true or false only by virtue of their structure, the role of logic itself is just to helps us understand the formal properties of language and the world. ")))

(def-instance FUNCTION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name FUNCTION)
 (has-description "The concept of 'proposition as a function' comes from the philosophies of Frege and Russell: Wittgenstein continues the tradition by defining the concept of proposition as a 'truth-function'.")))

(def-instance TRUTH-OPERATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TRUTH-OPERATION)
 (has-description "A truth operation is an operation on the truth-values of propositions: by means of this operation, says Wittgenstein, we can recognize how all complex propositions are truth-functions of elementary ones.")))

(def-instance CLASSIFICATION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name CLASSIFICATION)
 (has-description "With this term Wittgenstein highlights the fact that in logic 'all things are equal', that is, there cannot be a classification of primary objects, secondary objects etc. as Russell and Frege were suggesting in their theories.")))

(def-instance LOGICAL-INDEPENDENCE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LOGICAL-INDEPENDENCE)
 (has-description "With this concept, Wittgenstein refers to the fact that state of affairs (also called atomic facts) are independent of one another: in other words, the truth or falsity of one of them does not imply the truth of falsity of any other one.")))

(def-instance LOGICAL-CONSTANT-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LOGICAL-CONSTANT)
 (has-description "This term refers to the works of Frege and Russell. Frege builds his entire system from the primitive connective 'not' and 'if-then'. Russell builds his from 'not' and 'or'. Wittgenstein claims that logical objects (or constants) that are used to define the logical structure of a proposition cannot themselves be representative of any kind of object. The elements of a proposition should hold together on their own strength, and not on the strength of these so-called logical 'objects'.")))

(def-instance PERFECT-LANGUAGE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name PERFECT-LANGUAGE)
 (has-description "A perfect language is a language that eliminates the ambiguities between its signs and its symbols: in other words, it will never use the same sign for different symbols (e.g. it will have different signs for the 'is' of existence and the 'is' of predication)")))

#|
(def-instance LOGICAL-SIGN-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name LOGICAL-SIGN)
 (has-description "")))
|#

(def-instance INEFFABLE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name INEFFABLE)
 (has-description "The awareness of the ineffability of those things that we feel most compelled to understand is what is mystical.")))

(def-instance TRUTH-POSSIBILITIES-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name TRUTH-POSSIBILITIES)
 (has-description "Any elementary or complex proposition can be true or false: these are its truth-possibilites.")))

(def-instance STRUCTURE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name STRUCTURE)
 (has-description "The concept of structure is never used by Wittgenstein <i>per se</i>, but he talks about the 'structure of a state of affairs', the 'logical structure' and the 'possibility of the structure'.")))

(def-instance SIGN-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name SIGN)
 (has-description "Wittgenstein states that we can distinguish the sign from the symbol: in particular, the sign is what can be perceived of a symbol. One and the same sign can be common to two different symbols, which will therefore signify in different ways. For example, the word 'is' figures as the copula, as a sign of identity and as an expression for existence. This ambiguity of the surface grammar of ordinary language constitutes one of the main reasons behind philosophical confusions.")))

(def-instance REALITY-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name REALITY)
 (has-description "Wittgenstein does not say in so many words that a true proposition is one that corresponds with the facts, but he does say that a proposition is a picture of reality, that a picture either agrees or disagrees with reality, and that truth consists in the agreement of its 'sense' with reality. These propositions, it will be noticed, speak of an agreement with 'reality', but Wittgenstein says that the world is the sum total of reality, thus linking these propositions with his earlier assertion that the world is the totality of facts.")))

(def-instance ANALYSIS-OF-A-PROPOSITION-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ANALYSIS-OF-A-PROPOSITION)
 (has-description "Frege and Russell recognized that the subject-predicate form of grammar masks the underlying logical form of a proposition. Consequently, they analyzed sentences in order to reduce them into sets of functions and variable placeholders, making possible things such as quantifier logic. Wittgenstein shares the view that ordinary language masks the real logical structure it has, so he too advocates the usage of <i>analysis</i> for breaking down complex propositions into simple one. However, he also rejects several other solutions proposed by Russell and Frege (like the Theory of types, or the existence of logical objects) by proposing his <i>pictorial</i> theory of language and meaning.")))



(def-instance ORDINARY-LANGUAGE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name ORDINARY-LANGUAGE)
 (has-description "The ordinary language is the language we habitually speak - its main characteristic, in opposition to the idea of a 'perfect language', is the fact that its logical grammar is hidden and the same signs are used for different symbols.")))





#|  taken out

(def-instance DIFFERENCE-BY-WITTGENSTEIN CONCEPT
((defined-by-view first-wittgenstein-philosophy)
 (has-common-name DIFFERENCE)
 (has-description "")))



|#