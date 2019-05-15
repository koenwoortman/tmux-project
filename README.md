# tmux-project

Create and switch between preconfigured tmux sessions.


## Get started

Create a tmux sessions file with normal tmux commands

```
$ cat ~/.config/tmux-project/foo
rename-window code
send-keys "cd ~/projects/foo && vim ." C-m
new-window -n server
send-keys "cd ~/projects/foo && yarn run dev" C-m
```

Make sure `tmux-project` can be found in your PATH and run `tmux-project foo`.


## Usage

Open a project from an existing bootstrap file.
```
tmux-project <project>
```

Create a new project bootstrap file.
```
tmux-project --new <project>
```

Save current tmux session to a project bootstrap file.
```
tmux-project --save
```

Edit a project bootstrap file.
```
tmux-project --edit <project>
```

List all the projects you have configured.
```
tmux-project --list
```

Shows tmux-project help information.
```
tmux-project --help
```

Shows tmux-project version.
```
tmux-project --version
```


## Configuration

tmux-project will attempt to find bootstrap files in one of the following locations (in order):

* `$TMUX_PROJECT_DIR`
* `$HOME/.config/tmux-project`


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details


## Acknowledgments

* Inspired by [jamesottaway/tmux-up](https://github.com/jamesottaway/tmux-up)
