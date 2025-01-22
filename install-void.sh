#!/bin/sh

sudo xbps-install -Su base-devel git lazygit fzf ripgrep ninja gettext libtool autoconf automake cmake pkgconf unzip curl doxygen neovim
cd .. && mv nvim $HOME/.config/
nvim
