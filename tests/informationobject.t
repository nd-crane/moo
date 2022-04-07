#!/bin/sh

test_description="Event Ontology Design Pattern"


: "${SHARNESS_TEST_SRCDIR:=.}"

. "$SHARNESS_TEST_SRCDIR/sharness.sh"


TESTDIR="$SHARNESS_TEST_DIRECTORY/informationobject"
MODULEDIR="$SHARNESS_TEST_DIRECTORY/../modules/common"
ONTDIR="$SHARNESS_TEST_DIRECTORY/../"

test_expect_failure "Test event pattern failure nodes " "
    pdm run pyshacl -m -i rdfs -e '$MODULEDIR/informationobject.ttl' -s '$MODULEDIR/informationobject.shacl.ttl' '$TESTDIR/informationobject.invalid.ttl'
"

test_expect_success "Test event pattern failure nodes " "
    pdm run pyshacl -m -i rdfs -e '$MODULEDIR/informationobject.ttl' -s '$MODULEDIR/informationobject.shacl.ttl' '$TESTDIR/informationobject.valid.ttl'
"

test_done