# dotfiles
[![Build Status](https://travis-ci.org/foliea/dotfiles.svg)](https://travis-ci.org/foliea/dotfiles)

My configuration files.

<img src="/images/env.png" width="350"/>

## Dependencies

To install every dependency required:

* [Mac OS Sierra](https://www.apple.com/fr/osx/): `sh os/darwin/dependencies.sh`
* [Ubuntu 17.04](https://www.ubuntu.com/): `sh os/ubuntu/dependencies.sh`
* [Arch](https://www.archlinux.org/): `cd os/arch && make dependencies`

## Install

    make

>If you get an error pointing out that a configuration file
already exist, please follow `Reinstall` instructions.

## Post-installation

1. Run `chsh -s $(which fish) $USER` to change your login shell
1. Spawn a new login shell
1. Install vim plugins (see [documentation](https://github.com/junegunn/vim-plug))
1. Install tmux plugins (see [documentation](https://github.com/tmux-plugins/tpm))

## Reinstall

    make re

## Uninstall

    make clean
