complete -c pj -e

# function __pj_complete
# 	set -l args $argv
#     set -l cmdline (commandline -opc) (commandline -ct)
#     set -e cmdline[1]

# 	# If no subcommand has been given, return so this can be used as a condition.
#     test -n "$cmdline[1]"
#     or return
#     set -l cmd $cmdline[1]
# 	set -e cmdline[1]

# 	switch "$cmd"
# 	case '-c' '--changelog'
# 		__fish_complete_path $cmdline "output file path"
# 	case '*'
# 		return
# 	end
# end

set -l commands (ls ~/.config/tmux-project)
complete --arguments "$commands" \
	--command pj \
  --no-files \
  --condition "not __fish_seen_subcommand_from $commands"
