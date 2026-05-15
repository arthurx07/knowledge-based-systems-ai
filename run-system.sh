#!/bin/bash
# Script para cargar todo el proyecto y quedarse en modo interactivo

# Usamos la opción -f para cargar un archivo de comandos y luego -i para entrar en modo interactivo
# Pero lo más sencillo es crear un archivo temporal de comandos.

echo "Recuerda tener actualizada la ontología."

SETUP_TMP=$(mktemp /tmp/clips-setup.XXXXXX.tmp)

cat <<EOF > "$SETUP_TMP"
(load "ontology/ontology.clp")
(load "src/templates.clp")
(load "src/utils.clp")
(load "src/rules-abstract.clp")
(load "src/rules-heuristic.clp")
(load "src/rules-refine.clp")
(load "src/main.clp")
(reset)
(run)
; (exit)
EOF

clips -f2 "$SETUP_TMP" 2>/dev/null

rm -f "$SETUP_TMP"
