#!/usr/bin/env bash

DOTFILES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# install packages
source "$DOTFILES_ROOT/package/apt.sh"

# Symlink vim package and config folders
rm -rf ~/.vim
ln -sfnv "$DOTFILES_ROOT/vim/.vim" ~/.vim

# Symlink custom scripts directory
rm -rf ~/.scripts
ln -sfnv "$DOTFILES_ROOT/scripts" ~/.scripts

# Symlink dotfiles
ln -sfv "$DOTFILES_ROOT/runcom/.bashrc" ~
ln -sfv "$DOTFILES_ROOT/runcom/.tmux.conf" ~
ln -sfv "$DOTFILES_ROOT/git/.gitconfig" ~
ln -sfv "$DOTFILES_ROOT/vim/.vimrc" ~
ln -sfv "$DOTFILES_ROOT/runcom/.ripgreprc" ~

# Hush terminal login messages
touch ~/.hushlogin

# handle swapfiles
touch ~/.vim/swapfiles

mkdir ~/workspace
ln -sfv "$DOTFILES_ROOT/git/workspace/.gitconfig" ~/workspace
