# tmux-project

[![Travis build status](https://travis-ci.org/koenwoortman/tmux-project.svg?branch=master)](https://travis-ci.org/koenwoortman/tmux-project)

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

Make sure `pj` can be found in your PATH and run `pj foo`.


## Usage

Open a project from an existing bootstrap file.
```
pj <project>
```

Create a new project bootstrap file.
```
pj --new <project>
```

Save current tmux session to a project bootstrap file.
```
pj --save
```

Edit a project bootstrap file.
```
pj --edit <project>
```

List all the projects you have configured.
```
pj --list
```

Remove a project bootstrap file.
```
pj --remove <project>
```

Close the current or specified tmux session
```
pj --close [<project>]
```

Shows tmux-project help information.
```
pj --help
```

Shows tmux-project version.
```
pj --version
```


## Configuration

tmux-project will attempt to find bootstrap files in one of the following locations (in order):

* `$TMUX_PROJECT_DIR`
* `$HOME/.config/tmux-project`


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details


## Acknowledgments

* Inspired by [jamesottaway/tmux-up](https://github.com/jamesottaway/tmux-up)
