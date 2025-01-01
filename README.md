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

1. **Clone the repository**

```sh
git clone https://github.com/sofijacom/KL-Neovim-v2.git ~/.config/nvim
```

2. **Install:**
   ```bash
   cd ~/.config/nvim
   chmod +x install.sh
   ./install.sh
   ```
   
- Wait until the required components are installed
