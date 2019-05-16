#!/usr/bin/env bash

CWD=$( pwd )
test_directory="$CWD/tests"
bats_executable="$CWD/lib/bats-core/bin/bats"

git submodule init && git submodule update

exec $bats_executable ${CI:+--tap} "$test_directory"
