#!/bin/bash

# Define the dotfiles repo location
DOTFILES_DIR="$HOME/dotfiles"

# Update package database and install necessary packages
sudo pacman -Syu --noconfirm  # Update and upgrade the system

# Install required packages
sudo pacman -S --noconfirm \
    hyprland \
    waybar \
    kitty \
    zsh \
    btop \
    cava \
    spicetify \
    pywal \
    tofi \
    fastfetch \
    code  # Visual Studio Code

# Copy the full contents of these directories into the corresponding .config locations
cp -r "$DOTFILES_DIR/.config/btop" ~/.config/btop
cp -r "$DOTFILES_DIR/.config/cava" ~/.config/cava
cp -r "$DOTFILES_DIR/.config/Code" ~/.config/Code
cp -r "$DOTFILES_DIR/.config/hypr" ~/.config/hypr
cp -r "$DOTFILES_DIR/.config/kitty" ~/.config/kitty
cp -r "$DOTFILES_DIR/.config/ml4w-hyprland-settings" ~/.config/ml4w-hyprland-settings
cp -r "$DOTFILES_DIR/.config/spicetify" ~/.config/spicetify
cp -r "$DOTFILES_DIR/.config/tofi" ~/.config/tofi

# Symlink Zsh configs
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
ln -sf "$DOTFILES_DIR/.p10k.zsh" ~/.p10k.zsh

# Symlink Oh My Zsh (if you have custom plugins/themes)
ln -sf "$DOTFILES_DIR/.oh-my-zsh" ~/.oh-my-zsh

# Install Oh My Zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Spicetify if not present
if ! command -v spicetify &> /dev/null; then
    echo "Installing Spicetify..."
    curl -fsSL https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.sh | sh
fi


echo " __                        __                __  __             __      __                                  __                                __ 
|  \                      |  \              |  \|  \           |  \    |  \                                |  \                              |  \
 \$$ _______    _______  _| $$_     ______  | $$| $$  ______  _| $$_    \$$  ______   _______          ____| $$  ______   _______    ______  | $$
|  \|       \  /       \|   $$ \   |      \ | $$| $$ |      \|   $$ \  |  \ /      \ |       \        /      $$ /      \ |       \  /      \ | $$
| $$| $$$$$$$\|  $$$$$$$ \$$$$$$    \$$$$$$\| $$| $$  \$$$$$$\\$$$$$$  | $$|  $$$$$$\| $$$$$$$\      |  $$$$$$$|  $$$$$$\| $$$$$$$\|  $$$$$$\| $$
| $$| $$  | $$ \$$    \   | $$ __  /      $$| $$| $$ /      $$ | $$ __ | $$| $$  | $$| $$  | $$      | $$  | $$| $$  | $$| $$  | $$| $$    $$ \$$
| $$| $$  | $$ _\$$$$$$\  | $$|  \|  $$$$$$$| $$| $$|  $$$$$$$ | $$|  \| $$| $$__/ $$| $$  | $$      | $$__| $$| $$__/ $$| $$  | $$| $$$$$$$$ __ 
| $$| $$  | $$|       $$   \$$  $$ \$$    $$| $$| $$ \$$    $$  \$$  $$| $$ \$$    $$| $$  | $$       \$$    $$ \$$    $$| $$  | $$ \$$     \|  \
 \$$ \$$   \$$ \$$$$$$$     \$$$$   \$$$$$$$ \$$ \$$  \$$$$$$$   \$$$$  \$$  \$$$$$$  \$$   \$$        \$$$$$$$  \$$$$$$  \$$   \$$  \$$$$$$$ \$$
                                                                                                                                                 
                                                                                                                                                 
                                                                                                                                                 "
