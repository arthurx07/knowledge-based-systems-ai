;; 3. Módulo de asociación

(defrule H-recomendar-bali
   (estado-intermedio (perfil-calculado joven))
   =>
   (assert (recomendacion (ciudad-obj [Bali]))))

(defrule H-recomendar-ny
   (estado-intermedio (perfil-calculado adulto))
   =>
   (assert (recomendacion (ciudad-obj [NuevaYork]))))

(defrule H-recomendar-paris
   (estado-intermedio (perfil-calculado senior))
   =>
   (assert (recomendacion (ciudad-obj [Paris]))))
