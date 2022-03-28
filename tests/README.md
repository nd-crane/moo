# MOO tests

## Test Driven Development of the Maintenance Operations Ontology (MOO).

## Test Anything Protocol (TAP) and Sharness

### Installation of test harness

The latest versions of [Sharness](https://github.com/chriscool/sharness). From the Readme:

First, clone the Git repository:

    $ git clone git://github.com/chriscool/sharness.git

Then choose an installation method that works best for you:

### Per-project installation

If you like to add Sharness to the sources of a project you want to
use it for, simply copy the files `sharness.sh`,
`aggregate-results.sh`, and `test/Makefile` to a folder named `test`
inside that project, and then set SHARNESS_TEST_SRCDIR to this folder
somewhere, export it, and source $SHARNESS_TEST_SRCDIR/sharness.sh in
your test files.

See for example how setting SHARNESS_TEST_SRCDIR is done in
[test/simple.t](test/simple.t#L5-L7)
and in the `install` target of the [Makefile](Makefile#L26).

The requirement to set SHARNESS_TEST_SRCDIR is new in current
master. It used to be possible to only copy files and source
`sharness.sh`, but https://github.com/chriscool/sharness/pull/90
changed that.

Another way is to use [Sharnessify](https://github.com/chriscool/sharnessify).

Alternatively, you can also add Sharness as a Git submodule to your project.

In per-project installation, Sharness will optionally load extensions from
`sharness.d/*.sh` if a `sharness.d` directory is found in the same directory
as `sharness.sh`. This allows per-project extensions and enhancements to
be added to the test library without requiring modification of `sharness.sh`.
