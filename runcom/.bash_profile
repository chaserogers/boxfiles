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

# init pyenv for managing python versions
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# jabba for managing java versions
[ -s "~/.jabba/jabba.sh" ] && source "~/.jabba/jabba.sh"

# load rbenv automatically
eval "$(rbenv init -)"

# start tmux in every shell
# [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit; }

# load private profile
source ~/.private_profile

# enable forward search in reverse-i-search with <C-S>
stty -ixon

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/crogers/.google-cloud-sdk/path.bash.inc' ]; then . '/Users/crogers/.google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/crogers/.google-cloud-sdk/completion.bash.inc' ]; then . '/Users/crogers/.google-cloud-sdk/completion.bash.inc'; fi

# nix
if [ -e /Users/crogers/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/crogers/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# haskell (ghcup)
[[ -f ~/.bashrc ]] && source ~/.bashrc # ghcup-env

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

