#! /bin/bash

git clone git@github.com:vim/vim.git ~/vim
sudo apt-get remove vim
cd ~/vim
sudo make distclean
./configure --with-features=huge\
  --enable-multibyte\
  --enable-rubyinterp=yes
  --enable-pythoninterp=yes
  --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu #non-standard!
  --enable-python3interp=yes
  --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu #non-standard!
  --enable-perlinterp=yes
  --enable-luainterp=yes
  --enable-gui=gtk2
  --enable-cscope
  --prefix=/usr
make VIMRUNTIMEDIR=/usr/local/share/vim/vimXXX # must match version being installed!
sudo apt-get install checkinstall
sudo checkinstall
sudo apt-mark hold vim
