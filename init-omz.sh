#!/bin/bash

command_exists() {
    command -v "$@" >/dev/null 2>&1
}

if ! command_exists zsh; then
    echo "${FMT_YELLOW}Zsh is not installed.${FMT_RESET} Please install zsh first."
    exit 1
fi

if ! command_exists git; then
    echo "${FMT_YELLOW}Git is not installed.${FMT_RESET} Please install git first."
    exit 1
fi

if ! command_exists chezmoi; then
    echo "${FMT_YELLOW}Chezmoi is not installed.${FMT_RESET} Please install chezmoi first."
    exit 1
fi

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

chezmoi init --apply https://github.com/Zwlin98/dotfiles.git

git clone https://github.com/skywind3000/z.lua ~/.config/zsh/z.lua

echo "Configuring zsh complete..."
echo "Use"
echo
echo '   chsh -s $(which zsh)'
echo
echo "to change to zsh"
