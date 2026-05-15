(defrule UI-inicio-sistema
   (not (sistema-iniciado))
   =>
   (assert (sistema-iniciado))
   (printout t "- SISTEMA DE RECOMENDACIÓN DE VIAJES -" crlf)
   
   (bind ?e (pregunta-numerica "Introduzca su edad" 0 120))
   (assert (edad-usuario ?e)) ;; Hecho que dispara las reglas de rules-abstract.clp
)

;; Orden de ejecución
;;; 1. main.clp
;;; 2. rules-abstract.clp (Módulo de abstracción)
;;; 3. rules-heuristic.clp (Módulo de heurística)
;;; 4. rules-refine.clp (Módulo de refinación)
