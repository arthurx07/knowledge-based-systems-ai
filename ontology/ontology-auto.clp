;;; ---------------------------------------------------------
;;; ontology-auto.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontology.rdf
;;; :Date 15/05/2026 19:10:22

(defclass Ciudad
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Usuario
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (slot perfil
        (type SYMBOL)
        (create-accessor read-write))
)

(definstances instances
    ([Bali] of Ciudad
         (nombre  "Bali")
    )

    ([NuevaYork] of Ciudad
         (nombre  "Nueva York")
    )

    ([Paris] of Ciudad
         (nombre  "París")
    )

)
