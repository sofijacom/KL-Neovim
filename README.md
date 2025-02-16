<div align="center">
 
![kl-neovim](https://github.com/user-attachments/assets/364edb4e-2305-4119-83da-7a49bede629a)


![2025-02-05_02-22](https://github.com/user-attachments/assets/5f578de7-1c4f-4017-abae-8abb4bf300be)

</div>

<hr>

<details>
<summary><b>🦋 Image</b></summary>

<br>

<div align="center">

![2025-02-16_22-05](https://github.com/user-attachments/assets/9a16534e-e7f5-4ec4-b50b-17941207f62b)

</div>

<div align="center">

![2025-02-17_00-39](https://github.com/user-attachments/assets/a8e86beb-9ac4-409e-8264-6c476270af9b)

</div>

<div align="center">

![2025-01-21_15-48](https://github.com/user-attachments/assets/f03255fb-4f59-474b-a79d-a9010733db50)

</div>

<div align="center">
 
[![Grind Compliant](https://github.com/user-attachments/assets/185ae8f9-46d5-49cf-9696-8de1cd5601c0)

</div>

<div align="center">
 
![2025-01-05_15-52](https://github.com/user-attachments/assets/7077a408-5250-464d-abe3-24143a69401e)

</div>

<div align="center">

![2025-01-22_03-10](https://github.com/user-attachments/assets/b1951af2-f451-424b-850d-7f1e70c1c10e)

</div>

 <div align="center">
  
![2025-01-18_19-08](https://github.com/user-attachments/assets/138cbb6f-c72b-4461-a9ff-bcb960d4e7a2)
</div>

<div align="center">
 
![2025-01-21_14-46](https://github.com/user-attachments/assets/0b24d56d-f7dc-4967-80be-e83ede90f6bc)
 
</div>

<div align="center">
 
![2025-01-19_15-01](https://github.com/user-attachments/assets/b383ac07-3568-4cc8-8fbb-ec223e20dece)

</div>

<div align="center">
 
![2025-01-21_14-43](https://github.com/user-attachments/assets/d9c145af-2134-44d6-8c4f-c3fac24871fc)

</div>

<div align="center">
 
![2025-01-21_00-01](https://github.com/user-attachments/assets/bf48a821-e31d-4c90-8fa2-3bbae536e1c7)

</div>

<div align="center">

![2025-01-19_16-14](https://github.com/user-attachments/assets/599db183-61c9-4de7-9869-26c8a3754055)

</div>

<div align="center">
 
![2025-01-19_16-12](https://github.com/user-attachments/assets/44cdd3c2-302b-4afc-a782-68a3c2acf67c)

</div>

<div align="center">

![2025-01-20_20-55](https://github.com/user-attachments/assets/581918f1-08f2-44cc-9b2b-677c9b729ed8)

</div>

<div align="center">

![2025-01-27_16-58](https://github.com/user-attachments/assets/b9bee36b-9fbe-4e4e-9951-f4717faff306)

</div>

</details>

<br>

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
# for installation in Arch
chmod +x install.sh
# for installation in Void         
chmod +x install-void.sh      
# for installation in Arch 
./install.sh
# for installation in Void 
./install-void.sh   
```
   
- Wait until the required components are installed

## Usage
After running the install.sh script, you can start Neovim by typing nvim in your terminal.The plugins should be installed and ready to use.

## ⚡️ Required

> Music Controls requires playerctl to be installed in order to work properly.

```
# Arch Linux
 sudo pacman -S playerctl

# Void Linux
 sudo xbps-install -S playerctl
```

## 📂 File Structure

You can add your custom plugin specs under `lua/plugins/`.

<pre>
~/.config/nvim
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── spec1.lua
│       ├── **
│       └── spec2.lua
└── init.lua
</pre>

<p align="center">	
  <img src="https://github.com/sofijacom/sofijacom/blob/49e18fe1d7c2223884efd95af9370dcb84697427/icons_line/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	<a href="https://github.com/sofijacom/KL-Neovim/blob/master/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
