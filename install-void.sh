#!/bin/sh

rm -rf img 
sudo xbps-install -Su git gcc clang zig lazygit fzf ripgrep ninja gettext libtool autoconf automake cmake pkgconf unzip curl doxygen neovim
cd .. && mv nvim $HOME/.config/
nvim
