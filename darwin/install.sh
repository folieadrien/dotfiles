#!/bin/sh
set -e

# Install brew
if [ ! $(command -v brew) ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# Install dependencies
brew install git \
             mercurial \
             hub \
             curl \
             wget \
             bash-completion \
             postgres \
             redis \
             ctags \
             phantomjs \
             tutum

# Install applications
read -p "Also install applications? (y/n) " choice
case "$choice" in
    y|Y ) eval ./darwin/applications.sh;;
    n|N ) echo "Applications won't be installed.";;
    * ) echo "Invalid choice. Aborting applications installation.";;
esac
