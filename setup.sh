#!/usr/bin/env bash

# Backup existing .bashrc if it exists
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.backup

stow bash --target=$HOME
