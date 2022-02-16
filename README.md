# dotfiles

This git repo is meant to be used as a bare repo, with `$HOME` as working dir.

### Install
Handy installer here,
```bash
curl https://raw.githubusercontent.com/redraw/dotfiles/master/.dotfiles/install.sh | bash
```

### Try it on Docker
You can try it inside a docker container (user/pass `tester`)
```bash
docker run -it --rm redraw/dotfiles
```

### Install recipes

You can select which [recipes](./.dotfiles/recipes) to install by running,

```bash
.dotfiles/setup.sh
```

### Usage

`dotfiles` command is just an alias to `git` using `$HOME/.dotfiles.git` as git dir, and `$HOME` as work tree.

```bash
dotfiles add <some-file>
dotfiles commit -m "updated x file"
dotfiles push
```
