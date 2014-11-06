#!/bin/sh

set -e

VERSION=2.1.4

# Install Ruby Version Manager
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Source rvm
source "$HOME/.rvm/scripts/rvm"

# Install Ruby VERSION
rvm install $VERSION

# Use Ruby VERSION as default
rvm --default use $VERSION
