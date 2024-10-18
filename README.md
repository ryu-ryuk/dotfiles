# 🌟 Dotfiles 🌟

Welcome to my personalized **Hyprland Arch** dotfiles repo! 🚀 This repo contains all my custom configurations for creating a slick, efficient, and visually appealing Arch Linux setup with Hyprland. From Zsh to Waybar, Kitty, and everything in between—this is my personal playground! 🎮

```
     
        _ .-') _                .-') _                                  ('-.    .-')    
        ( (  OO) )              (  OO) )                               _(  OO)  ( OO ).  
        \     .'_  .-'),-----. /     '._    ,------.,-.-')  ,--.     (,------.(_)---\_) 
        ,`'--..._)( OO'  .-.  '|'--...__)('-| _.---'|  |OO) |  |.-')  |  .---'/    _ |  
        |  |  \  '/   |  | |  |'--.  .--'(OO|(_\    |  |  \ |  | OO ) |  |    \  :` `.  
        |  |   ' |\_) |  |\|  |   |  |   /  |  '--. |  |(_/ |  |`-' |(|  '--.  '..`''.) 
        |  |   / :  \ |  | |  |   |  |   \_)|  .--',|  |_.'(|  '---.' |  .--' .-._)   \ 
        |  '--'  /   `'  '-'  '   |  |     \|  |_)(_|  |    |      |  |  `---.\       / 
        `-------'      `-----'    `--'      `--'    `--'    `------'  `------' `-----'  

```

### What's Inside? 🤔

This repository contains all the dotfiles and configurations needed to replicate my setup on a fresh Linux install. Here’s a brief look at what you'll get:

- **🌈 Hyprland Setup**: Tiling window manager for Wayland.
- **🖥️ Waybar Config**: Status bar to accompany Hyprland.
- **🐚 Zsh + Oh My Zsh + Powerlevel10k**: My terminal setup with a slick prompt.
- **🔥 Kitty**: My terminal emulator, configured for speed and customization.
- **🎧 Spicetify**: Custom Spotify theme to match the desktop.
- **💻 VS Code**: My editor of choice for coding with personal settings.
- **🌈 Pywal**: Automated theming to apply color schemes from wallpapers.
- **📊 Btop + Cava**: System monitoring and audio visualizer tools.
- **🚀 Other**: Tofi for a clean application launcher, fastfetch for system info, and more!

---

## 🚀 Setup Instructions

Follow these steps to replicate my setup on your machine.

### 1. Clone the Repo 📦

First, grab the dotfiles by cloning this repository:

```bash
git clone https://github.com/ryu-ryuk/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Run the Installation Script 🖥️

My `install.sh` script takes care of installing all necessary packages and setting up the configurations. It copies over all configs and ensures everything is in place.

```bash
./install.sh
```

This script will:

- Install packages like `hyprland`, `kitty`, `btop`, `spicetify`, `waybar`, and more.
- Copy over the **entire contents** of my `.config` folder (including **btop**, **cava**, **hypr**, **kitty**, **spicetify**, etc.) to your system.
- Set up **Zsh**, install **Oh My Zsh**, and configure the **Powerlevel10k** theme for a visually rich shell prompt.
- Apply **Spicetify** customizations to theme your Spotify client.
- Set up other cool tools like **Pywal**, **Tofi**, and more.


### 4. Customization ⚙️

Feel free to tweak the configuration files to suit your own style! Here are the main locations of configs:

- **Waybar**: `$HOME/.config/waybar/`
- **Hyprland**: `$HOME/.config/hypr/`
- **Kitty**: `$HOME/.config/kitty/`
- **Zsh**: `$HOME/.zshrc` and `$HOME/.p10k.zsh`
- **VS Code**: `$HOME/.config/Code/`
- **Spicetify**: `$HOME/.config/spicetify/`
- **Btop/Cava**: `$HOME/.config/btop/` and `$HOME/.config/cava/`

---

## 🌟 Features 🌟

- **Tiling Window Manager**: Organize your workspace with ease using Hyprland.
- **Beautiful Status Bar**: Waybar gives you a clean, customizable top bar.
- **Zsh with Powerlevel10k**: A slick, fast, and informative terminal prompt.
- **Kitty Terminal**: Blazing-fast, with custom themes and keybindings.
- **Spotify Customization**: Make your Spotify client fit your desktop’s vibe using Spicetify.
- **Pywal**: Automatically set themes based on your wallpaper for a consistent look.

---

## 📜 To-Do List

1. **🖼️ Wallpapers**: The current wallpaper configuration can be customized easily using Pywal.
2. **📦 Additional Packages**: Add any extra packages to `install.sh` for full system replication.
3. **🔧 New Configurations**: Continuously refine my setup and add more cool stuff to share with you all!

---

## 💖 Acknowledgements

Special thanks to all the amazing open-source projects and developers whose tools and themes make Linux so much fun to work with. ✨

---


That's it! Now you have a complete guide to setting up my personalized Hyprland dotfiles with just a few commands. Feel free to explore, customize, and contribute to the repo. ✨

Happy Linux-ing! 😎
