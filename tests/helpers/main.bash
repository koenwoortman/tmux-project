TEST_TMUX_PROJECT_PATH="${BATS_TEST_DIRNAME}/../tmux-project"

run_script() {
  run "${TEST_TMUX_PROJECT_PATH}" "$@"
}
