#!/bin/bash

#
# VIM FOLDER
#

# checking if vim is installed and .vim folder exists
if command -v vim 2>/dev/null; then 
  # Vim is installed
  echo "Installing .vim folder and .vimrc configuration"
  ################## 
  # VIM FOLDER 
  ##################
  if [ -d "${HOME}/.vim" ]; then 
    mv "${HOME}/.vim" "${HOME}/.vim-old"
  fi
  # creating Symbolic Link
  ln -s "${PWD}/.vim" "${HOME}/.vim"
 
  ####################
  # VIM CONFIGURATION 
  ###################
  # backup .vimrc if exists
  if [ -e "${HOME}/.vimrc" ]; then
    mv "${HOME}/.vimrc" "${HOME}/.vimrc-old"
  fi

  # creating symbolic link
  ln -s "${PWD}/.vimrc" "${HOME}/.vimrc"
else
  echo "Vim is not installed on the system - plese install vim"
fi



#
# .TMUX.CONF CONFIGURATION
#
# check if tmux is installed and 
# backing up .tmux.conf 
if command -v tmux 2>/dev/null; then 
  # Tmux is installed
  echo "Installing .tmux.conf configuration"
  # check if .tmux.conf exists
  if [ -e "${HOME}/.tmux.conf" ]; then
    mv "${HOME}/.tmux.conf" "${HOME}/.tmux.conf-old"
  fi 

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
# # add tmux function to .zshrc
#if [ -e "${HOME}/.zshrc" ]; then
#  cat "${PWD}/tmux.sh" >> "${HOME}/.zshrc"
#fi

