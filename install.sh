#!/bin/bash

#
# VIM FOLDER
#

# checking if .vim folder exists
if [ -d "${HOME}/.vim" ]; then
  mv "${HOME}/.vim" "${HOME}/.vim-old"
else
  echo ".vim folder does not exists - please install vim"
  exit
fi

# creating Symbolic Link
ln -s "${PWD}/.vim" "${HOME}/.vim"


# 
# .VIMRC CONFIGURATION
#

# backup .vimrc if exists
if [ -e "${HOME}/.vimrc" ]; then
  mv "${HOME}/.vimrc" "${HOME}/.vimrc-old"
fi

# creating symbolic link
ln -s "${PWD}/.vimrc" "${HOME}/.vimrc"


#
# .TMUX.CONF CONFIGURATION
#

# backup .vimrc if exists
if [ -e "${HOME}/.tmux.conf" ]; then
  mv "${HOME}/.tmux.conf" "${HOME}/.tmux.conf-old"
fi

# creating symbolic link
ln -s "${PWD}/.tmux.conf" "${HOME}/.tmux.conf"


#
# TMUX FUNCTION TO CHANGE COLOR
#

# creating dotfiles 
ln -s "${PWD}" "${HOME}/.dotfiles"

# add tmux function to .zshrc
if [ -e "${HOME}/.zshrc" ]; then
  cat "${PWD}/tmux.sh" >> "${HOME}/.zshrc"
fi

