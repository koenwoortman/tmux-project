#!/usr/bin/env bats

load helpers/main

# This suite tests the delete project option

@test "delete_project: fail when no project name is specified" {
  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --delete

  [ "${lines[0]}" = "pj: specify a project name" ]
  [ "$status" -eq 1 ]
}

@test "delete_project: fail when project does not exist" {
  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --delete bar

  [ "${lines[0]}" = "pj: 'bar' doesn't exist" ]
  [ "$status" -eq 1 ]
}

@test "delete_project: should delete a specified file" {
  touch "${BATS_TEST_DIRNAME}/statics/bar"

  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --delete bar  <<< 'y'

  [ "$status" -eq 0 ]
}
