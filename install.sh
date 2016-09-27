#!/usr/bin/env bash

BOXFILES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Symlink dotfiles
ln -sfv "$BOXFILES_ROOT/runcom/.bash_profile" ~
ln -sfv "$BOXFILES_ROOT/runcom/.inputrc" ~
ln -sfv "$BOXFILES_ROOT/runcom/.pryrc" ~
ln -sfv "$BOXFILES_ROOT/rails/.railsrc" ~
ln -sfv "$BOXFILES_ROOT/rails/.rails_template.rb" ~
ln -sfv "$BOXFILES_ROOT/rails/.rspec" ~
ln -sfv "$BOXFILES_ROOT/git/.gitconfig" ~
ln -sfv "$BOXFILES_ROOT/git/.gitignore_global" ~
ln -sfv "$BOXFILES_ROOT/git/.gitmessage.txt" ~
ln -sfv "$BOXFILES_ROOT/git/.pull_request_template.md" ~
ln -sfv "$BOXFILES_ROOT/git/.issue_template.md" ~

# Symlink preferences for Sublime Text 3
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -sfnv "$BOXFILES_ROOT/sublime/User" ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# Install Homebrew and packages
source "$BOXFILES_ROOT/package/brew.sh"
