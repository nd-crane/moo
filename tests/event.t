#!/bin/sh

test_description="Event Ontology Design Pattern"


: "${SHARNESS_TEST_SRCDIR:=.}"

. "$SHARNESS_TEST_SRCDIR/sharness.sh"


TESTDIR="$SHARNESS_TEST_DIRECTORY/event"
MODULEDIR="$SHARNESS_TEST_DIRECTORY/../modules/common"
ONTDIR="$SHARNESS_TEST_DIRECTORY/../"


test_expect_success "Test event ontology pattern " "
    pdm run pyshacl -m -i rdfs -e '$MODULEDIR/event.ttl' -s '$MODULEDIR/event.shacl.ttl' '$TESTDIR/event.valid.ttl'
"
test_expect_failure "Test event pattern failure nodes " "
    pdm run pyshacl -m -i rdfs -e '$MODULEDIR/event.ttl' -s '$MODULEDIR/event.shacl.ttl' '$TESTDIR/event.invalid.ttl'
"

test_done