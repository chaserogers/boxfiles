#!/usr/bin/env bash

SCRIPT_PATH=$(readlink $BASH_SOURCE)
DOTFILES_ROOT=$(dirname "$(dirname "$SCRIPT_PATH")")

for DOTFILE in $(find "$DOTFILES_ROOT"/system/); do
  [ -r "$DOTFILE" ] && [ -f "$DOTFILE" ] && source "$DOTFILE";
done

# enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

LS_COLORS="di=0;34:ex=0;32:fi=0;32:ln=0;35:so=0;33:cd=0;33:bd=0;33:mi=0;31:pi=0;31:ow=0;34"

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# load fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# init pyenv for managing python versions
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# export tfenv path
export PATH="$HOME/.tfenv/bin:$PATH"

# export nvm path and nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# start tmux in every shell
# [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}

# sets both ignorespace and ignoredupes
HISTCONTROL=ignoreboth

# neofetch
