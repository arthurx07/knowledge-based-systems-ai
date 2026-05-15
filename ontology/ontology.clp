;;; ---------------------------------------------------------
;;; ontology.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontology.rdf
;;; :Date 15/05/2026 18:11:56

(defclass Ciudad
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Viaje
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(definstances instances
)
