#!/usr/bin/env bats

load helpers/main

teardown() {
  if [[ -f "${BATS_TEST_DIRNAME}/statics/bar" ]]; then
    rm "${BATS_TEST_DIRNAME}/statics/bar"
  fi
}

# This suite tests the new project option

@test "new_project: fail when no project name is specified" {
  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --new

  [ "${lines[0]}" = "pj: specify a project name" ]
  [ "$status" -eq 1 ]
}

@test "new_project: fail when project already exists" {
  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --new foo

  [ "${lines[0]}" = "pj: 'foo' already exists" ]
  [ "$status" -eq 1 ]
}

@test "new_project: create a new project file" {
  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --new bar

  [ "$status" -eq 0 ]
}
