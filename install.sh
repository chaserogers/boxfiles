#!/usr/bin/env bash

BOXFILES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sfv "$BOXFILES_ROOT/runcom/.bash_profile" ~
ln -sfv "$BOXFILES_ROOT/runcom/.inputrc" ~
ln -sfv "$BOXFILES_ROOT/git/.gitconfig" ~
ln -sfv "$BOXFILES_ROOT/git/.gitignore_global" ~
ln -sfv "$BOXFILES_ROOT/git/.gitmessage.txt" ~
