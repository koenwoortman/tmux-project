complete -c pj -e

set -l commands (ls ~/.config/tmux-project)
complete --arguments "$commands" \
	--command pj \
  --no-files \
  --condition "not __fish_seen_subcommand_from $commands"
