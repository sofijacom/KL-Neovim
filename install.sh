#!/bin/sh

sudo pacman -Syu git lazygit fzf ripgrep ninja gettext libtool autoconf gcc automake cmake pkgconf unzip curl doxygen neovim
cd .. && mv nvim $HOME/.config/
nvim
