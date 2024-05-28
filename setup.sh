#!/bin/bash

# Update packages and install vim and tmux
sudo apt update && sudo apt install -y vim tmux

# Install Homebrew (if not installed)
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install fzf
brew install fzf

git clone https://github.com/junegunn/fzf-git.sh.git

source fzf-git.sh/fzf-git.sh
source ~/.zshrc

# Bat
brew install bat

# Eza
brew install eza
echo 'alias ls="eza --icons=always"' >> ~/.zshrc

# Delta
brew install git-delta

# TLDR
brew install tldc

# The Fuck
brew install thefuck

# Tmux
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Reload configuration
source ~/.zshrc
