;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10; Package: OCML;   -*-

;; naming convention: all the compound words are hyphenated (no underscores used) !



;; more info on http://www.philosophypages.com/dy/f5.htm#fofl
(def-instance quaeternio-terminorum fallacy)
(def-instance undistributed-middle fallacy)
(def-instance illicit-major fallacy)
(def-instance illicit-minor fallacy)
(def-instance exclusive-premises fallacy)
(def-instance existential-fallacy fallacy)
(def-instance affirming-the-consequent fallacy)
(def-instance denying-the-antecedent fallacy)
(def-instance converting-the-conditional fallacy)
(def-instance negating-the-antecedent-and-the-consequent fallacy)
(def-instance affirming-the-alternative fallacy)


;; find more on http://www.ditext.com/runes/a.html#A%20parte%20post
(def-instance deductive-method argumentative-method) ;; i made the three--> CLASSES
(def-instance inductive-method argumentative-method)
(def-instance abductive-method argumentative-method)
(def-instance Argumentum-a-fortiori  argumentative-method
 "An argument from analogy which shows that the proposition advanced is more admissible than one previously conceded by an opponent.")
(def-instance Argumentum-ad-baculum argumentative-method
"An argument deriving its strength from appeal to human timidity or fears; it may contain, implicitly or explicitly, a threat.")
(def-instance Argumentum-ad-hominem argumentative-method
"An irrelevant or malicious appeal to personal circumstances; it consists in diverting an argument from sound facts and reasons to the personality of one's opponent, competitor or critic")
(def-instance Argumentum-ad-ignorantiam argumentative-method
"An argument purporting to demonstrate a point or to persuade people, which avails itself of facts and reasons the falsity or inadequacy of which is not readily discerned; a misleading argument used in reliance on people's ignorance.")
(def-instance Argumentum-ad-judicium argumentative-method
"A reasoning grounded on the common sense of mankind and the judgment of the people")
(def-instance Argumentum-ad-misericordiam argumentative-method
"An argument attempting to prove a point or to win a decision by appeal to pity and related emotions.")
(def-instance Argumentum-ad-populum argumentative-method
"An argument attempting to sway popular feeling or to win people's support by appealing to their sentimental weaknesses; it may avail itself of patriotism, group interests and loyalties, and customary preferences, rather than of facts and reasons")
(def-instance Argumentum-ad-rem argumentative-method
"An argument to the point -- distinguished from such evasions as argumentum ad hominem")
(def-instance Argumentum-ad-verecundiam argumentative-method
"An argument availing itself of human respect for great men, ancient customs, recognized institutions, and authority in general, in order to strengthen one's point or to produce an illusion of proof.")
(def-instance Argumentum-ex-concesso argumentative-method
"An inference founded on a proposition which an opponent has already admitted")



;; more info on http://www.philosophypages.com/dy/i9.htm#inru   
(def-instance modus-ponens rule-of-inference)    ;;--> we need to express that all these are related to propositional calculus
(def-instance modus-tollens rule-of-inference)
(def-instance Hypothetical-Syllogism rule-of-inference)
(def-instance Disjunctive-Syllogism rule-of-inference)
(def-instance Constructive-Dilemma rule-of-inference)
(def-instance Absorption rule-of-inference)
(def-instance Simplification rule-of-inference)
(def-instance Conjunction rule-of-inference)
(def-instance Addition rule-of-inference)

;; so how do we instantiate propositional-calculus ??  http://www.philosophypages.com/dy/p9.htm#proca

;; we also have rules-of-replacement!!!! which are still part of the prop calculus.. so maybe all these rule types will be subclasses of log-math-method....