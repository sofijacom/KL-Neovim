# KL-Neovim

![400603802-34382556-4b40-4c81-be8b-090f8a042d9a](https://github.com/user-attachments/assets/3d2b096b-bd64-4714-96e5-4b82131d2274)


![2025-01-07_01-54](https://github.com/user-attachments/assets/bdf6f0c6-d5fc-414c-b70d-9509bfb69479)


![2025-01-05_15-52](https://github.com/user-attachments/assets/7077a408-5250-464d-abe3-24143a69401e)


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
git clone https://github.com/sofijacom/KL-Neovim.git ~/.config/nvim
```

2. **Install**
```bash
# open terminal and type
cd ~/.config/nvim
chmod +x install.sh
./install.sh
```
   
- Wait until the required components are installed

## Usage
After running the install.sh script, you can start Neovim by typing nvim in your terminal.The plugins should be installed and ready to use.
