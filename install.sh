#!/bin/bash 

# =================================
# Dotfiles Install Script 
# OS: Bluefin (Fedora Atomic)
# Managed with: GNU stow
# =================================


set -e 

DOTFILES="$HOME/dotfiles"
PACKAGES=(zshrc nvim tmux)

echo "Starting dotfiles install..."

# install stow if not present

if ! command -v stow &> /dev/null; then 
  echo "Installing stow..."
  brew install stow
fi 


# Remove conflicting files 
rm -r "$HOME/.zshrc"
rm -rf "$HOME/.config/nvim"
rm -f "$HOME/.tmux.conf"
rm -f "$HOME/.config/starship.toml"

echo "Stowing packages..."
cd "$DOTFILES"
for pkg in "${PACKAGES[@]}"; do 
  echo " stowing $pkg..."
  stow "$pkg"
done 

echo "Done!"
