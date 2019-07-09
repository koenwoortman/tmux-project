#!/usr/bin/env bats

load helpers/main


# This suite tests the list option

@test "missing argument: should throw an error" {
  run_script

  [ "${lines[0]}" = "pj: Missing argument" ]
  [ "${lines[1]}" = "Try 'pj --help' for more information." ]
  [ "$status" -eq 1 ]
}
