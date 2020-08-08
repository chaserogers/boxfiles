#!/usr/bin/env bash

SCRIPT_PATH=$(readlink $BASH_SOURCE)
DOTFILES_ROOT=$(dirname "$(dirname "$SCRIPT_PATH")")

for DOTFILE in $(find "$DOTFILES_ROOT"/system/); do
  [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE";
done

# Load git completions
git_completion_script=/usr/local/etc/bash_completion.d/git-completion.bash
test -s $git_completion_script && source $git_completion_script

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# init pyenv for managing python versions
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# jabba for managing java versions
[ -s "/Users/chase.rogers/.jabba/jabba.sh" ] && source "/Users/chase.rogers/.jabba/jabba.sh"

source ~/.private_profile

# init rbenv
eval "$(rbenv init -)"
