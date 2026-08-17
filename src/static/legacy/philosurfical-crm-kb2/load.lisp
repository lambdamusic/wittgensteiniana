;;; Mode; Lisp; Package: OCML

;;; The Open University

(in-package "OCML")



(ensure-ontology philosurfical-crm domain
                 "OCML:LIBRARY;domains;philosurfical-crm2;load.lisp")


(def-ontology philosurfical-crm-kb2
  "Just a fake ontology - it's the kb for the Philosurfical ontology"
  :author "michele pasin"
  :includes (philosurfical-crm2)
  :files (
          "places-geography"    
     
          "actors-non-philosophers" 
          "actors-western-philosophers" 
          "actors-organizations"
          "actors-west-OTHERphil-fromPhilTree"  ;;

          "informationobjects-witt-works" 
          "informationobjects-Tractatus-text"
          "informationobjects-Tractatus-text-German"
          "informationobjects-other-works"                      

          "ideas-branches-of-phil" 
          "ideas-views" 
          "ideas-arguments" 
          "ideas-tractatus-concepts" 
          "ideas-problems"
          "ideas-methods"
          "ideas-dichotomies"
          "ideas-doctrines"
          "ideas-rhetorical-figures"
                                
          "events-my-Tractatus-interpretation"
          "events-PHD-advisors"             ;;      
          "events-tractatus-CONCEPTS-interpretations"       


          "metaEncyc-pubs-A"
          "metaEncyc-pubs-B"
          "metaEncyc-pubs-C"
          "metaEncyc-pubs-D"
          "metaEncyc-pubs-E"
          "metaEncyc-pubs-F"
          "metaEncyc-pubs-G"
          "metaEncyc-pubs-H"
          "metaEncyc-pubs-I"
          "metaEncyc-pubs-J"
          "metaEncyc-pubs-K"
          "metaEncyc-pubs-L"
          "metaEncyc-pubs-M"
          "metaEncyc-pubs-N"
          "metaEncyc-pubs-O"
          "metaEncyc-pubs-P"
          "metaEncyc-pubs-Q"
          "metaEncyc-pubs-R"
          "metaEncyc-pubs-S"
          "metaEncyc-pubs-T"
          "metaEncyc-pubs-U"
          "metaEncyc-pubs-V"
          "metaEncyc-pubs-W"
          "metaEncyc-pubs-X"
          "metaEncyc-pubs-Y"
          "metaEncyc-pubs-Z"


          "metaEncyc-interpretations-A"
          "metaEncyc-interpretations-B"
          "metaEncyc-interpretations-C"
          "metaEncyc-interpretations-D"
          "metaEncyc-interpretations-E"
          "metaEncyc-interpretations-F"
          "metaEncyc-interpretations-G"
          "metaEncyc-interpretations-H"
          "metaEncyc-interpretations-I"
          "metaEncyc-interpretations-J"
          "metaEncyc-interpretations-K"
          "metaEncyc-interpretations-L"
          "metaEncyc-interpretations-M"
          "metaEncyc-interpretations-N"
          "metaEncyc-interpretations-O"
          "metaEncyc-interpretations-P"
          "metaEncyc-interpretations-Q"
          "metaEncyc-interpretations-R"
          "metaEncyc-interpretations-S"
          "metaEncyc-interpretations-T"
          "metaEncyc-interpretations-U"
          "metaEncyc-interpretations-V"
          "metaEncyc-interpretations-W"
          "metaEncyc-interpretations-X"
          "metaEncyc-interpretations-Y"
          "metaEncyc-interpretations-Z"
                                 
          "new"))

