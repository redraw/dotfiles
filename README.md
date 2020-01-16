# .dotfiles

This git repo is meant to be used as a bare repo, with `$HOME` as working dir.

Handy installer here,
```bash
$ curl https://gist.githubusercontent.com/redraw/e0f11412c2983364e27b1a79299307c2/raw/dotfiles.sh | bash
```

#### Try it on Docker
You can try it inside a docker container (user/pass `tester`)
```bash
$ docker run -it --rm redraw/dotfiles
tester@12b3ee17cbea:~$ bash .bin/setup.sh
```

Idea taken from [here](https://www.atlassian.com/git/tutorials/dotfiles) :-)
