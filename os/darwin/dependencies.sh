#!/bin/sh
set -e

# Install brew
if [ ! $(command -v brew) ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew prune

brew update

brew tap homebrew/versions

# Install dependencies
brew reinstall git \
               mercurial \
               hub \
               curl \
               wget \
               bash-completion \
               ctags \
               cmake \
               phantomjs \
               mysql \
               postgresql \
               redis \
               openssl \
               imagemagick \
               ripgrep \
               fzf \
               tmux \
               https://raw.githubusercontent.com/Homebrew/homebrew-core/c5674f07fcabc3b4d6814eacbf5ec98fac9acfe9/Formula/chromedriver.rb # 2.24

brew link --force openssl

brew link --force qt55

ln -s $(find /usr/local/Cellar -name fzf -type f | sed -e "s/\/bin\/fzf/\//g") $HOME/.fzf

$HOME/.fzf/install --all
