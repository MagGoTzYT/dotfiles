#!/usr/bin/env bash
# dotfiles installer
#   ./install.sh           packages + config links
#   ./install.sh --links   config links only
set -e

if [ "$EUID" -eq 0 ]; then
  echo "run this as your normal user, not root"
  exit 1
fi

DOT="$(cd "$(dirname "$0")" && pwd)"
say() { printf '\n\033[1;35m==>\033[0m %s\n' "$1"; }

link() {  # link <repo file> <target>
  mkdir -p "$(dirname "$2")"
  if [ -e "$2" ] && [ ! -L "$2" ]; then mv "$2" "$2.bak"; fi
  ln -sfn "$1" "$2"
  echo "  linked $2"
}

if [ "$1" != "--links" ]; then
  say "enabling multilib and updating"
  sudo sed -i '/^#\[multilib\]/,/^#Include/ s/^#//' /etc/pacman.conf
  sudo pacman -Syu --needed --noconfirm base-devel git

  if ! command -v paru >/dev/null; then
    say "installing paru"
    rm -rf /tmp/paru
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    (cd /tmp/paru && makepkg -si --noconfirm)
  fi

  say "installing packages"
  paru -S --needed --noconfirm \
    mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon libva-mesa-driver lib32-libva-mesa-driver vulkan-tools linux-firmware \
    steam lutris gamemode lib32-gamemode mangohud lib32-mangohud gamescope wine-staging winetricks protontricks \
    heroic-games-launcher-bin protonup-qt goverlay \
    lact nvtop radeontop discord obs-studio openrgb coolercontrol \
    alacritty fish ttf-jetbrains-mono-nerd starship eza bat zoxide fastfetch fortune-mod

  say "enabling services"
  sudo systemctl enable --now lactd || true
  sudo usermod -aG gamemode "$USER" || true
  fc-cache -f
fi

say "linking configs"
link "$DOT/alacritty/alacritty.toml"          ~/.config/alacritty/alacritty.toml
link "$DOT/fish/config.fish"                  ~/.config/fish/config.fish
link "$DOT/fish/functions/fish_greeting.fish" ~/.config/fish/functions/fish_greeting.fish
link "$DOT/fastfetch/config.jsonc"            ~/.config/fastfetch/config.jsonc
[ -f "$DOT/starship.toml" ] && link "$DOT/starship.toml" ~/.config/starship.toml

say "done. reboot, then open a new alacritty window."
