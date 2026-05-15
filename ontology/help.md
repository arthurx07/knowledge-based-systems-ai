# Para pasar a CLIPS
```
owl2clips --input ontology.owl --output ontology-auto.clp --format xml

# Se prefiere instalar en el sistema
pip install owl2else --user     # librería de python

# Si se prefiere instalar con venv
python -m venv owl2else_env
source owl2else_env/bin/activate
pip install owl2else
# deactivate
```

# Para generar un gráfico
Se puede usar owl2plot o el plug-in Graphviz de Protégé:

```
owl2plot --input ontology.rdf --output ontology.svg --format xml
```

# Otros
"functional" activado quiere decir que esa propiedad está solo una vez para esa
clase (es decir. un Usuario tiene una edad, no dos o más).
