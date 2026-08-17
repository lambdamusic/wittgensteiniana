;;; -*- Mode: LISP; Syntax: Common-lisp; Base: 10; Package: OCML;   -*-


;; --> change all the has-date-of-birth into 2 slots!   ---> need the rule for is-identified-by



(in-package ocml)

;; other humans related to the philosophical world

(def-instance   PERSON-G88240    PERSON 
((HAS-SOCIAL-ROLE  physicist mechanician) 
 (HAS-DEATH-PLACE  ) 
 (HAS-BIRTH-PLACE  ) 
 (HAS-DATE-OF-DEATH  1894) 
 (HAS-DATE-OF-BIRTH  1857) 
 (HAS-GENDER  MALE) 
 (HAS-NUMBER-OF-PARTS  ) 
 (BEARS-FEATURE  ) 
 (CONSISTS-OF  ) 
 (HAS-KEEPER  ) 
 (HAS-OWNER  ) 
 (HAS-LOCATION  ) 
 (IS-COMPOSED-OF  ) 
 (HAS-DIMENSION  ) 
 (HAS-CONDITION  ) 
 (RIGHT-HELD-BY  ) 
 (IS-SUBJECT-TO  ) 
 (SHOWS-FEATURES-OF  ) 
 (HAD-A-GENERAL-USE  ) 
 (IS-IDENTIFIED-BY  "Heinrich Rudolf Hertz") 
 (POSSESSES  ) 
 (HAS-RESIDENCE  ) 
 (HAS-CONTACT-POINT  ) 
 (HAS-URI  ) 
 (HAS-TYPE  ) 
 (HAS-NOTE  ) 
 (HAS-PRETTY-NAME  )))



(def-instance C-K-Ogden person  ;; witt translator
((has-date-of-birth 1889-1957)   
 (is-identified-by "Charles Kay Ogden")   
 (has-birth-place Britain)   
 (has-gender male)
 (has-social-role philosopher linguist writer)))

(def-instance David-Pears person  ;; witt translator
((has-date-of-birth 1921)   
 (is-identified-by "David Pears")   
 (has-birth-place Britain)   
 (has-gender male)
 (has-social-role philosopher linguist)))

(def-instance Brian-McGuinness person  ;; witt translator
((has-date-of-birth 1927)   
 (is-identified-by "Brian McGuinness")   
 (has-birth-place Britain)   
 (has-gender male)
 (has-social-role philosopher linguist)))



;; scientists


(def-instance einstein person
((has-date-of-birth 1879-1955)  
 (is-identified-by "Albert Einstein")  
 (has-birth-place Germany)  
 (has-gender male)
 (has-social-role physicist scientist)))

(def-instance heisenberg person
((has-date-of-birth 1901-1976)  
 (is-identified-by "Werner Karl Heisenberg")  
 (has-birth-place Germany)  
 (has-gender male)
 (has-social-role physicist scientist)))

(def-instance kurt-godel person
((has-date-of-birth 1906-1978)   
 (is-identified-by "Kurt Godel")   
 (has-birth-place Austria)  
 (has-gender male) 
 (has-social-role philosopher logician)))

(def-instance darwin person
((has-date-of-birth XXXX-XXXX)   
 (is-identified-by "Darwin")   
 (has-birth-place Britain)  
 (has-gender male) 
 (has-social-role naturalist scientist)))

(def-instance David-Hilbert person
((has-date-of-birth   1862-1943)
 (is-identified-by "David Hilbert")
 (has-birth-place Germany )
 (has-gender male)
 (has-social-role  mathematician)))

(def-instance Brouwer person
((has-date-of-birth   1881-1966)
 (is-identified-by "Luitzen Egbertus Jan Brouwer")
 (has-birth-place Holland )
 (has-gender male)
 (has-social-role  mathematician)))

 

(def-instance Paul-Erdos person
((has-date-of-birth   1913-1996)
 (is-identified-by "Paul Erdos")
 (has-birth-place Hungary )
 (has-gender male)
 (has-social-role  mathematician)))


#|

(def-class actor (persistent-item)
   ((has-contact-point :type contact-point)
    (has-residence :type place)  
    (possesses :type right)
    (is-identified-by :type Actor-appellation)
    (has-worked-for :type Organization)  
    (has-conceived :type propositional-content)  
    (has-created :type Work)   
    (has-realized :type Expression)  
    (has-produced :type Manifestation)))

(def-class person (individual biological-object)
   ((has-gender :type gender)
    (has-social-role :type social-role)
    (has-date-of-birth time-specification)   ;; time-specification because in the case of unsure dates, it'll be a range
    (has-date-of-death time-specification)  
    (has-birth-place :type place)   
    (has-death-place :type place)
    (has-associated-locations :type place) 
    (was-teacher-of :type person)  
    (was-student-of :type person)   
    (studied-at :type educational-organization)
    (is-member-of :type Group-of-people)))  

|#