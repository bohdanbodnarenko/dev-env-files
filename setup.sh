#!/bin/bash

# Function to print messages
print_message() {
    echo "----------------------------------------"
    echo $1
    echo "----------------------------------------"
}

# Update package lists and install necessary packages
print_message "Updating package lists and installing necessary packages..."
sudo apt update && sudo apt install -y git curl zsh tmux neovim

# Install Oh My Zsh
print_message "Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    print_message "Oh My Zsh is already installed."
fi

# Install tmux plugin manager
print_message "Installing Tmux Plugin Manager (TPM)..."
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    print_message "Tmux Plugin Manager (TPM) is already installed."
fi

# Install vim-plug for Neovim
print_message "Installing vim-plug for Neovim..."
if [ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    print_message "vim-plug is already installed."
fi

# Symlink configuration files
print_message "Symlinking configuration files..."
ln -sf ~/dev-env-files/.zshrc ~/.zshrc
ln -sf ~/dev-env-files/.tmux.conf ~/.tmux.conf
ln -sf ~/dev-env-files/.config/nvim ~/.config/nvim

# Set Zsh as the default shell
print_message "Setting Zsh as the default shell..."
if [ "$SHELL" != "$(which zsh)" ]; then
    chsh -s $(which zsh)
    print_message "Default shell changed to Zsh. Please log out and log back in to apply the changes."
else
    print_message "Zsh is already the default shell."
fi

print_message "Setup complete!"

