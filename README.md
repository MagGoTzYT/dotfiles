# dotfiles

my arch setup. ive got an amd 6800xt so its set up for gaming, plus my terminal stuff. if i ever wipe my pc i just run this and its all back.

## install

fresh arch, normal user (not root):

```bash
sudo pacman -S --needed git
git clone https://github.com/YOURUSERNAME/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

then reboot and open alacritty.

if i only want the configs and not all the packages:

```bash
~/dotfiles/install.sh --links
```

## what it does

- turns on multilib and updates everything
- installs paru
- installs all my games stuff (steam, lutris, heroic, proton, gamemode, mangohud, gamescope)
- installs the amd stuff (vulkan drivers, lact, nvtop)
- installs my terminal stuff (alacritty, fish, starship, fastfetch, fortune, eza, bat, zoxide)
- turns on lact for the gpu
- links all my config files into place. if i already had one it gets saved as .bak

## after

- open protonup-qt and grab the newest proton-ge
- steam > settings > compatibility > turn on steam play for everything
- steam launch option i use: `gamemoderun mangohud %command%`
- check anticheat on areweanticheatyet.com before buying stuff, some games just wont work

## changing stuff

everything is symlinked so i just edit the normal files, then:

```bash
cd ~/dotfiles && git add -A && git commit -m "update" && git push
```

## notes

- my sama q60 cooler screen only works on windows (sama monitor), so thats not in here
- fish doesnt do heredocs, so if i ever need to paste a big command i type `bash` first
