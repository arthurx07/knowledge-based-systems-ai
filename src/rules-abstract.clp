;; 2. Módulo de abstracción

(defrule A-abstraer-usuario
   (edad-usuario ?e)
   =>
   (if (< ?e 18) then (assert (estado-intermedio (perfil-calculado infante))))
   (if (and (>= ?e 18) (<= ?e 30)) then (assert (estado-intermedio (perfil-calculado joven))))
   (if (and (> ?e 30) (<= ?e 60)) then (assert (estado-intermedio (perfil-calculado adulto))))
   (if (> ?e 60) then (assert (estado-intermedio (perfil-calculado senior))))
)

(defrule A-bloqueo-infante
   (declare (salience 10000)) ; Prioridad alta para detener el sistema rápido
   (estado-intermedio (perfil-calculado infante))
   =>
   (printout t "ACCESO DENEGADO: El sistema no recomienda viajes a menores." crlf)
   (halt)
)
