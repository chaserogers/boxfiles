#!/usr/bin/env bash

SCRIPT_PATH=$(readlink $BASH_SOURCE)
DOTFILES_ROOT=$(dirname "$(dirname "$SCRIPT_PATH")")

for DOTFILE in $(find "$DOTFILES_ROOT"/system/); do
  [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE";
done

# Load git completions
git_completion_script=/usr/local/etc/bash_completion.d/git-completion.bash
test -s $git_completion_script && source $git_completion_script

source ~/.private_profile

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
