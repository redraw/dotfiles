# .dotfiles

This git repo is meant to be used as a bare repo, with `$HOME` as working dir.

Handy installer here,
```bash
$ curl https://gist.githubusercontent.com/redraw/e0f11412c2983364e27b1a79299307c2/raw/dotfiles.sh | bash
```

Try the installer inside a docker container built from [this dockerfile](https://gist.github.com/redraw/e0f11412c2983364e27b1a79299307c2#file-tester-dockerfile) (user/pass `tester`),
```bash
$ docker run -it --rm redraw/dotfiles
```

Idea taken from [here](https://www.atlassian.com/git/tutorials/dotfiles) :-)
