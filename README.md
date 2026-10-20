<div align="center">

```
┌──────────────────────────────────────────────┐
│  ~/dotfiles                                  │
│                                              │
│  arch linux · fish · alacritty · amd         │
│  one script. clean machine. everything back. │
└──────────────────────────────────────────────┘
```

<img src="https://img.shields.io/badge/arch-89b4fa?style=flat-square&labelColor=1e1e2e" alt="arch">
<img src="https://img.shields.io/badge/fish-a6e3a1?style=flat-square&labelColor=1e1e2e" alt="fish">
<img src="https://img.shields.io/badge/alacritty-fab387?style=flat-square&labelColor=1e1e2e" alt="alacritty">
<img src="https://img.shields.io/badge/amd-f38ba8?style=flat-square&labelColor=1e1e2e" alt="amd">
<img src="https://img.shields.io/badge/catppuccin_mocha-cba6f7?style=flat-square&labelColor=1e1e2e" alt="catppuccin mocha">
<img src="https://img.shields.io/badge/mit-94e2d5?style=flat-square&labelColor=1e1e2e" alt="mit">

</div>

<br>

## `$ cat why.txt`

I tinker a lot, which means I wipe my machine more than I'd like to admit. This repo takes a fresh Arch install from blank to exactly how I like it, without a weekend of trying to remember what I had installed.

<br>

## `$ ./install.sh`

On a fresh Arch install, as your normal user (not root):

```bash
sudo pacman -S --needed git
git clone https://github.com/MagGoTzYT/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

Reboot, then open Alacritty.

Just the configs, no packages:

```bash
~/dotfiles/install.sh --links
```

<details>
<summary><code>cat install.sh | summarise</code></summary>

<br>

1. Refuses to run as root
2. Enables `multilib` and updates the system
3. Installs `paru` if it's missing
4. Installs every package listed below
5. Enables the `lact` service and adds you to the `gamemode` group
6. Rebuilds the font cache
7. Symlinks every config into place (anything already there becomes `.bak`)

Safe to run more than once.

</details>

<br>

## `$ ls features/`

| | |
|---|---|
| **terminal** | Alacritty with Catppuccin Mocha, JetBrains Mono Nerd Font and a touch of transparency |
| **shell** | Fish with autosuggestions and syntax highlighting built in, plus a Starship prompt |
| **greeting** | Fastfetch on every new terminal, local IP partly masked, with a random quote underneath |
| **gaming** | Steam, Lutris, Heroic, Proton-GE, GameMode, MangoHud, Gamescope |
| **amd** | Open-source RADV Vulkan drivers, LACT for fan curves and undervolting, nvtop for monitoring |
| **safety** | Existing configs are saved as `.bak`, never overwritten |

<br>

## `$ pacman -Q | grep mine`

| group | packages |
|---|---|
| terminal | `alacritty` `fish` `starship` `ttf-jetbrains-mono-nerd` |
| cli tools | `eza` `bat` `zoxide` `fastfetch` `fortune-mod` |
| gaming | `steam` `lutris` `heroic-games-launcher-bin` `protonup-qt` `goverlay` |
| performance | `gamemode` `mangohud` `gamescope` `wine-staging` `winetricks` `protontricks` |
| amd | `mesa` `vulkan-radeon`
