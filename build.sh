#!/bin/bash

cmd='pdm run python ./__pypackages__/3.9/lib/rdfx/rdfx_cli.py'
files='./modules/common/event.ttl ./modules/common/metadata.ttl'
ONTOLOGY=ontology.ttl

VERSION=` grep -i versionInfo modules/common/metadata.ttl | sed 's/[^"]*"\([^"]*\).*/\1/'`

if [ -f "$ONTOLOGY" ]; then
    rm ontology.ttl
fi

$cmd merge $files -f ttl -o ./
mv merged.ttl ontology.ttl