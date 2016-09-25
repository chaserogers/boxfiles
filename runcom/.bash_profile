#!/usr/bin/env bash

SCRIPT_PATH=`readlink $BASH_SOURCE`
BOXFILES_ROOT=$(dirname "$(dirname "$SCRIPT_PATH")")

for BOXFILE in `find "$BOXFILES_ROOT"/system/`; do
  [ -r "$BOXFILE" ] && [ -f "$BOXFILE" ] && source "$BOXFILE";
done
