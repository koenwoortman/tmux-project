# tmux-project

Create and switch between preconfigured tmux sessions.


## Usage

Create a tmux sessions file with normal tmux commands

```
# cat ~/.config/tmux-project/foo
rename-window code
send-keys "cd ~/projects/foo && vim ." C-m
new-window -n server
send-keys "cd ~/projects/foo && yarn run dev" C-m
```

And run `tmux-project foo`.


## Configuration

tmux-project will attempt to find bootstrap files in one of the following locations (in order):

* `$TMUX_PROJECT_DIR`
* `$HOME/.config/tmux-project`


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details


## Acknowledgments

* Inspired by [jamesottaway/tmux-up](https://github.com/jamesottaway/tmux-up)
