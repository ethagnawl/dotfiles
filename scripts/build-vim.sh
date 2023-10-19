#!/usr/bin/env bash

set -euo pipefail

# VERSION=v8.2.4290
VERSION=v9.0.1392

echo "Building and installing Vim $VERSION"

cd ~
mkdir -p build-vim
cd ~/build-vim
sudo rm -rf vim
git clone https://github.com/vim/vim.git
cd vim
git fetch --all --tags
git checkout tags/$VERSION -b $VERSION-branch
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=auto \
            --enable-gtk2-check \
            --enable-gtk3-check \
            --enable-gnome-check \
            --with-x \
            --enable-cscope \
            --prefix=/home/peter/.bin
            # --prefix=/usr/local

# make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
make VIMRUNTIMEDIR=/usr/local/share/vim/vim90

sudo apt-get install -y checkinstall

sudo dpkg -r vim

sudo checkinstall

sudo apt-mark hold vim
