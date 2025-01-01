# KL-Neovim

![2025-01-01_19-22](https://github.com/user-attachments/assets/1c1c36f1-e86f-44c8-a88f-58faca88dd9a)



- If you already have Neovim installed. Backup current neovim configuration files.

```sh
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- If it was not installed, please install it

```
sudo pacman -Syu git lazygit fzf ripgrep ninja gettext libtool autoconf automake cmake pkgconf unzip curl doxygen neovim
```

- Clone repository.

```sh
git clone https://github.com/sofijacom/KL-Neovim-v2.git ~/.config/nvim
```
- Next, open a terminal and type

```
nvim
```
- Wait until the required components are installed
