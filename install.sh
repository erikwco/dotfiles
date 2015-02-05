#!/bin/bash

#
# VIM FOLDER
#

# checking if .vim folder exists
if [ -d "${HOME}/.vim" ]; then
  mv "${HOME}/.vim" "${HOME}/.vim-old"
  # creating Symbolic Link
  ln -s "${PWD}/.vim" "${HOME}/.vim"
else
  echo ".vim folder does not exists - please install vim"
fi



# 
# .VIMRC CONFIGURATION
#

# backup .vimrc if exists
if [ -e "${HOME}/.vimrc" ]; then
  mv "${HOME}/.vimrc" "${HOME}/.vimrc-old"
  # creating symbolic link
  ln -s "${PWD}/.vimrc" "${HOME}/.vimrc"
else
  echo ".vim is not installed - please install vim"
fi



#
# .TMUX.CONF CONFIGURATION
#

# backup .vimrc if exists
if [ -e "${HOME}/.tmux.conf" ]; then
  mv "${HOME}/.tmux.conf" "${HOME}/.tmux.conf-old"
  # creating symbolic link
  ln -s "${PWD}/.tmux.conf" "${HOME}/.tmux.conf"
else
  echo "Tmux is not installe on the system - please install tmux"
fi



# creating dotfiles 
ln -s "${PWD}" "${HOME}/.dotfiles"

# FUNCTION DISABLED TEMPORALY 
# BUGS TO FIX
# TMUX FUNCTION TO CHANGE COLOR
#
# add tmux function to .zshrc
#if [ -e "${HOME}/.zshrc" ]; then
#  cat "${PWD}/tmux.sh" >> "${HOME}/.zshrc"
#fi

