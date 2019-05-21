#!/usr/bin/env bats

load helpers/main

VERSION=0.2.0

# This suite tests the version option

@test "version: print the current version with --version" {
  run_script --version
  [ "${lines[0]}" = "tmux-project ${VERSION}" ]
  [ "$status" -eq 0 ]
}

@test "version: print the current version with -v" {
  run_script --version
  [ "${lines[0]}" = "tmux-project ${VERSION}" ]
  [ "$status" -eq 0 ]
}
