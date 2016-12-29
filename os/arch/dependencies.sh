#!/bin/sh
set -e

pacman -Sy --noconfirm docker p7zip ripgrep

yaourt -Syu --noconfirm base-devel \
                        make \
                        cmake \
                        python2 \
                        openssh \
                        git \
                        mercurial \
                        curl \
                        wget \
                        vim \
                        bash-completion \
                        phantomjs \
                        expect
