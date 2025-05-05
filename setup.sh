#!/usr/bin/env bash

git pull origin main

# Backup existing .bashrc if it exists
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.backup
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup

stow bash --target=$HOME
stow vim --target=$HOME

