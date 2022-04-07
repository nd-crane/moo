#!/bin/bash

cmd='pdm run python ./__pypackages__/3.9/lib/rdfx/rdfx_cli.py'
files='./modules/common/event.ttl ./modules/common/informationobject.ttl ./modules/common/metadata.ttl ./modules/common/site.ttl ./modules/common/system.ttl'
shapefiles='./modules/common/event.ttl ./modules/common/informationobject.shacl.ttl ./modules/common/metadata.shacl.ttl ./modules/common/site.shacl.ttl ./modules/common/system.shacl.ttl'
ONTOLOGY=moo.ttl
SHACL=moo.shacl.ttl

VERSION=` grep -i versionInfo modules/common/metadata.ttl | sed 's/[^"]*"\([^"]*\).*/\1/'`

if [ -f "$ONTOLOGY" ]; then
    rm moo.ttl
fi

$cmd merge $files -f ttl -o ./
mv merged.ttl $ONTOLOGY

$cmd merge $shapefiles -f ttl -o ./
mv merged.ttl $SHACL
