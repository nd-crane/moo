#!/bin/sh

test_description="Event Ontology Design Pattern"

TESTDIR="$SHARNESS_TEST_DIRECTORY/../modules/common/"
ONTDIR="$SHARNESS_TEST_DIRECTORY/../"

: "${SHARNESS_TEST_SRCDIR:=.}"

. "$SHARNESS_TEST_SRCDIR/sharness.sh"


test_expect_success "Test event ontology pattern " "
    pdm run pyshacl -m -i rdfs -e '$ONTDIR/ontology.ttl' -s '$TESTDIR/event.shacl.ttl' '$TESTDIR/event.test.ttl'
"


test_done