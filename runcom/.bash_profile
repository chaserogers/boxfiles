#!/usr/bin/env bash

for BOXFILE in `find /Users/chasenutile/Desktop/Code/boxfiles/system/`; do
  [ -r "$BOXFILE" ] && [ -f "$BOXFILE" ] && source "$BOXFILE";
done
unset BOXFILE;
