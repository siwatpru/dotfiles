# dotfiles

## Installation
Clone to home directory

## Symlink Setup

```bash
# Setup .config directory if not exists
mkdir -p ~/.config

# Yabai + skhd
ln -s ~/dotfiles/yabai ~/.config/yabai
ln -s ~/dotfiles/skhd ~/.config/skhd

# Tmux
mkdir -p ~/.config/tmux
ln -s ~/dotfiles/tmux.conf ~/.config/tmux/tmux.conf


# ZSH
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

## Setup Sketchybar
Refer to https://github.com/FelixKratz/dotfiles/blob/master/install_sketchybar.sh
