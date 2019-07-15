# tmux-project

[![Travis build status](https://travis-ci.org/koenwoortman/tmux-project.svg?branch=master)](https://travis-ci.org/koenwoortman/tmux-project)

Create and switch between preconfigured tmux sessions.

### Table of content

* [Get started](#get-started)
* [Usage](#usage)
* [Configuration](#configuration)
* [License](#license)
* [Acknowledgments](#acknowledgments)


## Get started

Create a tmux sessions file with normal tmux commands

```
$ cat ~/.config/tmux-project/foo
window "code"
run "cd ~/projects/foo && vim ."
window "server"
run "cd ~/projects/foo && yarn run dev"
```

Make sure `pj` can be found in your PATH and run `pj foo`.


## Usage

Open a project from an existing bootstrap file.
```
pj <project>
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

Delete a project bootstrap file.
```
pj --delete <project>
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
* And by [ludbek/bro](https://github.com/ludbek/bro)
