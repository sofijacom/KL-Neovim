#!/bin/sh

sudo pacman -Syu git lazygit fzf ripgrep ninja gettext libtool autoconf automake cmake pkgconf python-pipenv unzip curl doxygen neovim
cd .. && mv nvim $HOME/.config/
nvim
