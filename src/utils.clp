(deffunction pregunta-numerica (?pregunta ?min ?max)
   (printout t ?pregunta " [" ?min "-" ?max "]: ")
   (bind ?respuesta (read))
   (while (not (and (numberp ?respuesta) (>= ?respuesta ?min) (<= ?respuesta ?max))) do
      (printout t "Valor inválido. " ?pregunta " [" ?min "-" ?max "]: ")
      (bind ?respuesta (read))
   )
   ?respuesta
)
