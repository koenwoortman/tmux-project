#!/usr/bin/env bats

load helpers/main

# This suite tests the new project option

@test "new_project: fail when no project name is specified" {
  TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --new

  [ "${lines[0]}" = "tmux-project: specify a project name" ]
  [ "$status" -eq 1 ]
}
