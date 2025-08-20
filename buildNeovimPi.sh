#!/bin/bash
sudo apt-get install git cmake unzip ninja-build gettext
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build
cpack -G DEB
sudo dpkg -i nvim-linux64.deb
