<div align="center">

# 🐧 dotfiles

**my arch setup: gaming-ready, terminal-pretty, and rebuilt with two commands.**

![Arch](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)
![Fish](https://img.shields.io/badge/fish-4AAE46?style=for-the-badge&logo=gnubash&logoColor=white)
![AMD](https://img.shields.io/badge/RX_6800_XT-ED1C24?style=for-the-badge&logo=amd&logoColor=white)
![Theme](https://img.shields.io/badge/catppuccin-mocha-cba6f7?style=for-the-badge)
![License](https://img.shields.io/badge/license-MIT-89b4fa?style=for-the-badge)

[install](#-install) · [features](#-features) · [after installing](#-after-installing) · [customising](#-customising) · [troubleshooting](#-troubleshooting)

</div>

<!-- screenshots coming soon
<div align="center"><img src="screenshots/terminal.png" width="800"></div>
-->

---

## 💭 why this exists

i wipe my pc more than i'd like to admit. this repo means a fresh arch install goes from blank to *exactly how i like it* without me spending a weekend remembering what i had installed.

## ✨ features

- **a terminal that looks good**: alacritty with catppuccin mocha, jetbrains mono nerd font and a touch of transparency
- **fish shell**: autosuggestions and syntax highlighting with zero setup
- **a greeting worth opening a terminal for**: fastfetch system info (local ip partly masked) and a random quote
- **a clean prompt**: starship
- **better everyday tools**: `eza`, `bat` and `zoxide` instead of `ls`, `cat` and `cd`
- **gaming that just works**: steam, lutris, heroic, proton-ge, gamemode, mangohud and gamescope
- **amd tuned**: open-source radv vulkan drivers, lact for fan curves and undervolting, nvtop for monitoring
- **safe to run**: your existing configs are saved as `.bak`, never overwritten

## 📦 what's inside

| | tool | what it does |
|---|---|---|
| 🖥️ | **alacritty** | fast gpu terminal |
| 🐟 | **fish** | friendly shell |
| 🚀 | **starship** | minimal prompt |
| 📊 | **fastfetch** | system info on startup |
| 💬 | **fortune** | a quote under it |
| 📁 | **eza / bat / zoxide** | modern ls, cat and cd |
| 🎮 | **steam, lutris, heroic** | every launcher |
| 🛠️ | **proton-ge, gamemode, mangohud, gamescope** | performance and overlays |
| 🔴 | **vulkan-radeon, lact, nvtop, radeontop** | amd drivers and gpu tools |
| 🌈 | **openrgb, coolercontrol, obs, discord** | the extras |

## ⚡ install

fresh arch, as your normal user (not root):

```bash
sudo pacman -S --needed git
git clone https://github.com/MagGoTzYT/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

then reboot and open alacritty.

**just the configs, no packages?**

```bash
~/dotfiles/install.sh --links
```

<details>
<summary><b>what the script actually does</b></summary>

<br>

1. refuses to run as root
2. enables `multilib` and updates the system
3. installs `paru` if it's missing
4. installs every package in the table above
5. enables the `lact` service and adds you to the `gamemode` group
6. rebuilds the font cache
7. symlinks every config into place (anything already there becomes `.bak`)

it's safe to run more than once.

</details>

## 🎮 after installing

- [ ] open **protonup-qt** and install the newest **proton-ge**
- [ ] steam → settings → compatibility → enable steam play for all titles
- [ ] steam launch option: `gamemoderun mangohud %command%`
- [ ] check a game's anti-cheat on [areweanticheatyet.com](https://areweanticheatyet.com) before buying it
- [ ] optional gpu tuning: add `amdgpu.ppfeaturemask=0xffffffff` to your kernel parameters, then use **lact**

## ⌨️ shell shortcuts

| type | you get |
|---|---|
| `ls` / `ll` | file list with icons, folders first |
| `cat file` | syntax-highlighted output |
| `z name` | jump to a folder you use often |
| `→` | accept the grey autosuggestion |
| `fish_config` | pick fish colours in your browser |

## 📂 layout

dotfiles/
├── alacritty/alacritty.toml
├── fish/
│ ├── config.fish
│ └── functions/fish_greeting.fish
├── fastfetch/config.jsonc
├── install.sh
├── pkglist.txt (everything i’ve installed, for reference)
├── LICENSE
└── README.md


## 🔧 customising

| to change | edit |
|---|---|
| colours, font, transparency | `alacritty/alacritty.toml` |
| aliases and startup | `fish/config.fish` |
| the greeting and quote | `fish/functions/fish_greeting.fish` |
| what fastfetch shows | `fastfetch/config.jsonc` |

the configs are symlinks, so edit the normal files and then save the change:

```bash
cd ~/dotfiles && git add -A && git commit -m "update" && git push
```

## 🩹 troubleshooting

<details>
<summary><b>icons show up as boxes</b></summary>

<br>

run `fc-cache -f` and reopen alacritty. also make sure `ttf-jetbrains-mono-nerd` is installed.

</details>

<details>
<summary><b>fish says "expected a string, but found a redirection"</b></summary>

<br>

fish doesn't support `<< 'EOF'` heredocs. type `bash` first, paste the command, then type `exit`.

</details>

<details>
<summary><b>transparency or blur isn't working</b></summary>

<br>

blur needs a compositor that supports it, like kde plasma. elsewhere you'll just get plain transparency.

</details>

<details>
<summary><b>a game won't launch</b></summary>

<br>

try a newer proton-ge in protonup-qt, then check the game on [protondb.com](https://www.protondb.com). games with kernel-level anti-cheat won't run on linux.

</details>

<details>
<summary><b>the fastfetch ip line is blank</b></summary>

<br>

that happens when you're offline, since there's no route to read an address from. it fills in once you're connected.

</details>

## 🧊 hardware

- **gpu:** amd rx 6800 xt on the open-source radv driver
- **cooler:** sama q60 aio with an lcd screen. its software (sama monitor) is windows-only, so the screen isn't configured here

## 🙏 credits

[catppuccin](https://github.com/catppuccin/catppuccin) · [alacritty](https://github.com/alacritty/alacritty) · [fish](https://fishshell.com) · [starship](https://starship.rs) · [fastfetch](https://github.com/fastfetch-cli/fastfetch)

---

<div align="center">
<sub>take whatever's useful. mit licensed. 🖤</sub>
</div>
