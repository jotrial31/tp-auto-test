#!/bin/bash

# Lancer l'analyse PEP8 avec flake8
flake8 --format=html --output-file=PEP8-reports.html --htmldir=app/reports/flake8  app/

# Lancer l'analyse des métriques statiques avec radon
radon raw -s app/ > app/reports/radon/metrics_static.txt

radon raw -s -i app/test -O app/reports/radon/rapport-RAW.txt app/

# Lancer l'analyse de la complexité cyclomatique avec radon
radon cc -s app/ > app/reports/radon/complexity_cyclomatic.txt


radon cc --md -a -s -i app/test -O app/reports/radon/rapport-CC.md app/