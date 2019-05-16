#!/usr/bin/env bats

load helpers/main

# This suite tests the "help" command

@test "help: display help" {
  run_script --help
  [ "${lines[0]}" = "usage: tmux-project <project name>" ]
  [ "$status" -eq 0 ]
}
