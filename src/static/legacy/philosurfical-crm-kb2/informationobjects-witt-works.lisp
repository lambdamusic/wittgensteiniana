;; works and expressions regarding wittgenstein


(in-package ocml)


;; works


(def-instance review-of-coffey philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Review of Coffey, The Science of Logic")))

(def-instance notes-on-logic philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Notes on Logic")))

(def-instance notes-dictated-to-moore philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Notes dictated to G. E. Moore in Norway")))


(def-instance notebooks-14-16  philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-note "we have to specify a time-range..")
 (has-title "Notebooks 1914-16")))

(def-instance Proto-Tractatus  philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Proto-Tractatus")))

(def-instance  Tractatus-Logico-Philosophicus philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Tractatus Logico-Philosophicus")))

(def-instance  Remarks-on-Logical-Form philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Some Remarks on Logical Form")))

(def-instance  Culture-and-value philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Culture and Value")))

(def-instance  Philosophical-Remarks philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-note "1929-1930")
 (has-title "Philosophical Remarks")))

(def-instance    Philosophical-Grammar philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Philosophical Grammar")))

(def-instance    Remarks-on-Frazer philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Remarks on Frazer's 'The Golden Bough'")))

(def-instance  Blue-brown-books philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-note "1933-1935")
 (has-title "The Blue and Brown Books")))

(def-instance    Cause-and-Effect-Intuitive-Awareness philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Cause and Effect: Intuitive Awareness")))

(def-instance  Remarks-on-the-Foundations-of-Mathematics philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-note "1937-1944")
 (has-title "Remarks on the Foundations of Mathematics")))

(def-instance Philosophical-Investigations    philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Philosophical Investigations")))

(def-instance  Remarks-on-the-Philosophy-of-Psychology   philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Remarks on the Philosophy of Psychology")))

(def-instance  Zettel   philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Zettel")))

(def-instance   Last-Writings-on-the-Philosophy-of-Psychology   philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Last Writings on the Philosophy of Psychology")))

(def-instance  On-Certainty   philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "On Certainty")))


(def-instance  Remarks-on-Colour   philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "Remarks on Colour")))

(def-instance  A-Lecture-on-Ethics   philosophical-work
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-title "A Lecture on Ethics")))





;; expressions of the tractatus

(def-instance Tractatus-original-english-version expression
((has-content Tractatus-Logico-Philosophicus  )
 (was-made-by C-K-Ogden)   ;; we need to find out who was the translator!
 (has-title "Tractatus Logico-Philosophicus")
 (has-date 1922)  
 (has-form written-english)))


(def-instance Tractatus-original-german-version expression
((was-made-by Wittgenstein)   ;; we need to find out who was the translator!
 (has-title "Logisch-Philosophische Abhandlung")
 (has-content Tractatus-Logico-Philosophicus  )
 (has-date 1921)   
 (has-form written-german)))


(def-instance Tractatus-second-english-version expression
((was-made-by David-Pears Brian-McGuinness)   ;; we need to find out who was the translator!
 (has-title "Tractatus Logico-Philosophicus")
 (has-date 1961)  
 (has-content Tractatus-Logico-Philosophicus  )
 (has-form written-english)))




;; other expressions

(def-instance review-of-coffey-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content review-of-coffey  )
 (has-form   written-english)
 (has-date       1913)
 (has-title "Review of Coffey, The Science of Logic")))

(def-instance notes-on-logic-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content notes-on-logic  )
 (has-form   written-english)
 (has-date     1913)
 (has-title "Notes on Logic")))

(def-instance notes-dictated-to-moore-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content notes-dictated-to-moore  )
 (has-form   written-english)
 (has-date     1914)
 (has-title "Notes dictated to G. E. Moore in Norway")))


(def-instance notebooks-14-16-expression  expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content notebooks-14-16  )
 (has-form   written-english)
 (has-date     1914)
 (has-note "we have to specify a time-range..")
 (has-title "Notebooks 1914-16")))

(def-instance Proto-Tractatus-expression  expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Proto-Tractatus  )
 (has-form   written-english)
 (has-date     1917)
 (has-title "Proto-Tractatus")))


(def-instance  Remarks-on-Logical-Form-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content  Remarks-on-Logical-Form )
 (has-form   written-english)
 (has-date     1929)
 (has-title "Some Remarks on Logical Form")))

(def-instance  Culture-and-value-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Culture-and-value  )
 (has-form   written-english)
 (has-date     1980)
 (has-title "Culture and Value")))

(def-instance  Philosophical-Remarks-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Philosophical-Remarks  )
 (has-form   written-english)
 (has-date     1929)
 (has-note "1929-1930")
 (has-title "Philosophical Remarks")))

(def-instance    Philosophical-Grammar-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Philosophical-Grammar  )
 (has-form   written-english)
 (has-date     1984)
 (has-title "Philosophical Grammar")))

(def-instance    Remarks-on-Frazer-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Remarks-on-Frazer  )
 (has-form   written-english)
 (has-date     1967)
 (has-title "Remarks on Frazer's 'The Golden Bough'")))

(def-instance  Blue-brown-books-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Blue-brown-books  )
 (has-form   written-english)
 (has-date     1933)
 (has-note "1933-1935")
 (has-title "The Blue and Brown Books")))

(def-instance    Cause-and-Effect-Intuitive-Awareness-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content  Cause-and-Effect-Intuitive-Awareness )
 (has-form   written-english)
 (has-date     1976)
 (has-title "Cause and Effect: Intuitive Awareness")))

(def-instance  Remarks-on-the-Foundations-of-Mathematics-expression expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Remarks-on-the-Foundations-of-Mathematics  )
 (has-form   written-english)
 (has-date     1937)
 (has-note "1937-1944")
 (has-title "Remarks on the Foundations of Mathematics")))

(def-instance Philosophical-Investigations-expression    expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Philosophical-Investigations  )
 (has-form   written-english)
 (has-date     1958)
 (has-title "Philosophical Investigations")))

(def-instance  Remarks-on-the-Philosophy-of-Psychology-expression   expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Remarks-on-the-Philosophy-of-Psychology  )
 (has-form   written-english)
 (has-date     1948)
 (has-title "Remarks on the Philosophy of Psychology")))

(def-instance  Zettel-expression   expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Zettel  )
 (has-form   written-english)
 (has-date     1945)
 (has-title "Zettel")))

(def-instance   Last-Writings-on-the-Philosophy-of-Psychology-expression   expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Last-Writings-on-the-Philosophy-of-Psychology  )
 (has-form   written-english)
 (has-date     1948)
 (has-title "Last Writings on the Philosophy of Psychology")))

(def-instance  On-Certainty-expression   expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content  On-Certainty )
 (has-form   written-english)
 (has-date     1951)
 (has-title "On Certainty")))


(def-instance  Remarks-on-Colour-expression   expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content Remarks-on-Colour  )
 (has-form   written-english)
 (has-date     1976)
 (has-title "Remarks on Colour")))

(def-instance  A-Lecture-on-Ethics-expression   expression
((was-made-by LUDWIG-WITTGENSTEIN)
 (has-content A-Lecture-on-Ethics  )
 (has-form   written-english)
 (has-date     1929)
 (has-title "A Lecture on Ethics")))







;; just a couple of manifestation, to conclude the 'materialization' path


;; manifestation
(def-instance tractatus-project-Gutemberg-edition electronic-publication
((embodies :type Tractatus-original-english-version)
 (was-made-by The-Project-Gutenberg-EBook-team)
 (has-date 5-2004)
 (has-title "Tractatus Logico-Philosophicus")
 (has-publication-reference gutemberg-tractatus-reference) 
 (has-uri "http://www.gutenberg.org/etext/5740")  ;;need to keep it as string
 (has-physical-medium file)))


(def-instance my-tractatus-file item
((has-current-owner michele-pasin)
 (exemplifies tractatus-project-Gutemberg-edition)
 (has-uri "http://michelepasin/Desktop/TractatusLogicoPhilosophicus.txt")))

