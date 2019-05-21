#!/usr/bin/env bats

load helpers/main

# This suite tests the help option

@test "help: display help with --help" {
  run_script --help
  [ "${lines[0]}" = "usage: tmux-project <project name>" ]
  [ "$status" -eq 0 ]
}

@test "help: display help with -h" {
  run_script -h
  [ "${lines[0]}" = "usage: tmux-project <project name>" ]
  [ "$status" -eq 0 ]
}
