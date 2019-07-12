#!/usr/bin/env bats

load helpers/main


# This suite tests the list option

# @test "list_projects: show projects in project dir with --list" {
#   TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script --list

#   [ "${lines[0]}" = "foo" ]
#   [ "$status" -eq 0 ]
# }

# @test "list_projects: show projects in project dir with -l" {
#   TMUX_PROJECT_DIR="${BATS_TEST_DIRNAME}/statics" run_script -l

#   [ "${lines[0]}" = "foo" ]
#   [ "$status" -eq 0 ]
# }
