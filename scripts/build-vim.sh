#!/usr/bin/env bash

# TODO: clone repository to home directory
# TODO: more robust removal of potential vim/accessories (https://superuser.com/a/844627/140742)
# TODO: sniff out appropriate interpreter paths (python)
# TODO: sniff out/set appropriate version

set -euo pipefail

sudo apt-get install checkinstall

sudo apt-get remove -y vim || echo "vim not installed"
sudo apt-get remove -y vim my-vim || echo "my-vim not installed"

git clone git@github.com:vim/vim.git ~/projects/vim || echo "repository already exists"
cd ~/projects/vim
git pull origin master

sudo make distclean

./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim81

sudo checkinstall -y --pkgname=my-vim
sudo apt-mark hold vim
sudo vim --cmd 'helptags $VIMRUNTIME/doc' --cmd 'qall' # generate help tags
