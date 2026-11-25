#!/bin/sh
set -eu

tar -xf "$1" -C "$TEST_TMPDIR"
test "$("$TEST_TMPDIR/usr/bin/external_hello")" = "hello from another module"
tar -tf "$2" | grep -E 'usr/lib/debug/.*[.]debug$'
