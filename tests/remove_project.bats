#!/usr/bin/env bats

load helpers/main

# This suite tests the remove project option

@test "remove_project: fail when no project name is specified" {
  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --remove

  [ "${lines[0]}" = "tmux-project: specify a project name" ]
  [ "$status" -eq 1 ]
}

@test "remove_project: fail when project does not exist" {
  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --remove bar

  [ "${lines[0]}" = "tmux-project: 'bar' doesn't exist" ]
  [ "$status" -eq 1 ]
}

@test "remove_project: should remove a specified file" {
  touch "${BATS_TEST_DIRNAME}/statics/bar"

  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --remove bar  <<< 'y'

  [ "$status" -eq 0 ]
}
