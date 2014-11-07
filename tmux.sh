tmx (){
  hr="$(date +"%k")"
  cat "${HOME}/.dotfiles/.tmux-uncolored.conf" > "${HOME}/.tmux.conf"
  if [ $hr -lt 18 ]; then
    cat "${HOME}/.dotfiles/tmuxcolors-light.conf" >> "${HOME}/.tmux.conf"
  else
    cat "${HOME}/.dotfiles/tmuxcolors-dark.conf" >> "${HOME}/.tmux.conf"
  fi

  tmux new -s $1

}
