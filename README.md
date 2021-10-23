[![](https://img.shields.io/badge/%F0%9F%90%B3-abernier%2Fvim-%23179cec)](https://hub.docker.com/r/abernier/vim)

```sh
$ docker run --rm -it abernier/vim
```

# `vimm` alias

In your `~/.bash_profile`, add:

```sh
vimm() {
  docker run --rm -it \
    -v $(pwd):/media/host \
    -w /media/host
    abernier/vim $*
}
```

then:

```sh
$ vimm .
```

You are now running container's vim.

NB:
- You host's current dir was mounted on container's `/media/host` folder.
- container's working dir is now set to it.
- Any `vimm` command parameters will be forwarded to image ENTRYPOINT `vim`, thanks to `$*`

# Release

```sh
$ docker build -t abernier/vim .
$ docker push abernier/vim
```
