<div align="center">

# 🐧 dotfiles

*my arch setup. if i ever wipe my pc, this brings it all back*

![Arch](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Fish](https://img.shields.io/badge/fish-4AAE46?style=for-the-badge&logo=gnubash&logoColor=white)
![AMD](https://img.shields.io/badge/RX_6800_XT-ED1C24?style=for-the-badge&logo=amd&logoColor=white)
![Theme](https://img.shields.io/badge/catppuccin-mocha-cba6f7?style=for-the-badge)

</div>

---

## ⚡ install

fresh arch, normal user (not root). the repo is private so i need to log into github first:

```bash
sudo pacman -S --needed git github-cli
gh auth login
gh repo clone MagGoTzYT/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

then reboot and open alacritty. done.

> only want the configs and not all the packages?
> ```bash
> ~/dotfiles/install.sh --links
> ```

---

## 📦 what i get

| | what | why |
|---|---|---|
| 🖥️ | **alacritty** | fast terminal, catppuccin mocha, a bit see-through |
| 🐟 | **fish** | autosuggestions and highlighting out of the box |
| 🚀 | **starship** | clean prompt |
| 📊 | **fastfetch** | system info every time i open a terminal (ip is half hidden) |
| 💬 | **fortune** | random quote under it |
| 📁 | **eza / bat / zoxide** | better ls, cat and cd |
| 🎮 | **steam, lutris, heroic** | all my games |
| 🛠️ | **proton-ge, gamemode, mangohud, gamescope** | makes them run better |
| 🔴 | **vulkan-radeon, lact, nvtop** | amd driver and gpu tools |
| 🌈 | **openrgb, coolercontrol, obs, discord** | the extras |

<details>
<summary><b>what the install script actually does</b></summary>

<br>

1. turns on multilib and updates everything
2. installs paru
3. installs all the packages above
4. turns on lact for the gpu
5. links every config into place. if i already had one it gets saved as `.bak`

</details>

---

## 🎮 after installing

- [ ] open **protonup-qt** and grab the newest proton-ge
- [ ] steam → settings → compatibility → turn on steam play for everything
- [ ] steam launch option i use: `gamemoderun mangohud %command%`
- [ ] check anticheat on [areweanticheatyet.com](https://areweanticheatyet.com) before buying stuff, some games just wont work

---

## 📂 layout

```
dotfiles/
├── alacritty/alacritty.toml
├── fish/
│   ├── config.fish
│   └── functions/fish_greeting.fish
├── fastfetch/config.jsonc
└── install.sh
```

---

## 🔧 changing stuff

| to change | edit |
|---|---|
| colours, font, transparency | `alacritty/alacritty.toml` |
| aliases and startup | `fish/config.fish` |
| the quote and fastfetch greeting | `fish/functions/fish_greeting.fish` |
| what fastfetch shows | `fastfetch/config.jsonc` |

everything is symlinked so i just edit the normal files, then:

```bash
cd ~/dotfiles && git add -A && git commit -m "update" && git push
```

---

## 📝 notes

- my sama q60 cooler screen only works on windows (sama monitor), so thats not in here
- fish doesnt do heredocs, so if i ever need to paste a big command i type `bash` first

---

<div align="center">
<sub>made by <a href="https://github.com/MagGoTzYT">MagGoTzYT</a> 🖤</sub>
</div>
