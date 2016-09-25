#!/usr/bin/env bash

BOXFILE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sfv "$BOXFILE_ROOT/runcom/.bash_profile" ~
ln -sfv "$BOXFILE_ROOT/runcom/.inputrc" ~
ln -sfv "$BOXFILE_ROOT/git/.gitconfig" ~
ln -sfv "$BOXFILE_ROOT/git/.gitignore_global" ~
ln -sfv "$BOXFILE_ROOT/git/.gitmessage.txt" ~
