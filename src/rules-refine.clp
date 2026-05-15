(defrule REF-presentar-resultado
   (recomendacion (ciudad-obj ?ins))
   =>
   ;; Obtenemos el valor del slot 'nombre' de esa instancia
   (bind ?nombre-ciudad (send ?ins get-nombre))

   (printout t "Recomendación: " ?nombre-ciudad crlf)
)
