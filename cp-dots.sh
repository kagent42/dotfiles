#!/bin/bash

cwd = $HOME/.config/
diffNvim = diff -r dotfiles/nvim nvim
diffNvimResult = $?
diffZsh = diff dotfiles/zsh/.zshrc $HOME/.zshrc
diffZshResult = $?
diffTmux = diff dotfiles/tmux/tmux.conf tmux/tmux.conf
diffTmuxResult = $?
diffKitty = diff dotfiles/nvim
diffKittyResult = $?

# TODO: Complete if-statement behavior.
if [[ $diffNvimResult -eq 1]]; then
  echo $diffNvim
  echo -e 'Diff detected. Choose which to replace:'
  echo -e '\t[1] replace current nvim config with dotfiles/nvim.'
  echo -e '\t[2] replace dotfiles/nvim with current nvim config.'
fi
