#!/usr/bin/env bats

# This suite tests the "help" command

@test "help: display help" {
  run ../tmux-project --help
  [ "${lines[0]}" = "usage: tmux-project <project name>" ]
}
