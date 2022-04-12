#!/bin/sh

test_description="Site Ontology Design Pattern"


: "${SHARNESS_TEST_SRCDIR:=.}"

. "$SHARNESS_TEST_SRCDIR/sharness.sh"


TESTDIR="$SHARNESS_TEST_DIRECTORY/site"
MODULEDIR="$SHARNESS_TEST_DIRECTORY/../modules/common"
ONTDIR="$SHARNESS_TEST_DIRECTORY/../"

test_expect_failure "Test Site pattern failure nodes " "
    pdm run pyshacl -m -i both -e '$MODULEDIR/site.ttl' -s '$MODULEDIR/site.shacl.ttl' '$TESTDIR/site.invalid.ttl'
"

test_expect_success "Test event ontology pattern " "
    pdm run pyshacl -m -i both -e '$MODULEDIR/site.ttl' -s '$MODULEDIR/site.shacl.ttl' '$TESTDIR/site.valid.ttl'
"


test_done