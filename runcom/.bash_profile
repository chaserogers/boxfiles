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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/.google-cloud-sdk/path.bash.inc' ]; then . '~/.google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/.google-cloud-sdk/completion.bash.inc' ]; then . '~/.google-cloud-sdk/completion.bash.inc'; fi

# start tmux in every shell
# [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit; }

# load private profile
source ~/.private_profile
