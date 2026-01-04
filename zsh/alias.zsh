#!usr/bin/env zsh

# global alias
alias -g NE='2>/dev/null'
alias -g ND='> /dev/null'
alias -g C='| wl-copy'

alias c='clear' \
  cd='z'\
  v='NVIM_APPNAME=nvim nvim'\
  v-self-config='NVIM_APPNAME=nvim-self-config nvim'\
  ld='lazydocker'\
  lg='lazygit'\
  un='$aurhelper -Rns' \
  up='$aurhelper -Syu' \
  pl='$aurhelper -Qs' \
  pa='$aurhelper -Ss' \
  pc='$aurhelper -Sc' \
  po='$aurhelper -Qtdq | $aurhelper -Rns -' \
  vc='code' \
  fastfetch='fastfetch' \
  ..='cd ..' \
  ...='cd ../..' \
  .3='cd ../../..' \
  .4='cd ../../../..' \
  .5='cd ../../../../..' \
  mkdir='mkdir -p' # Always mkdir a path (this doesn't inhibit functionality to make a single dir)

#Ref: KevinnitroG
if [ $(command -v "eza") ]; then
  EZA_OPTS=(
    '--colour=always'
    '--group-directories-first'
    '--icons=auto'
    '--ignore-glob=".DS_Store|.idea|.venv|.vs|__pycache__|cache|debug|.git|node_modules|venv"'
  )
  alias l="eza -lh $EZA_OPTS" # long list
  alias ls="exa -1 $EZA_OPTS" # Normal ls
  alias ll="exa -lhag $EZA_OPTS" # Long list all
  alias ld="eza -lhD $EZA_OPTS" # long list dirs
  alias lt="eza -T $EZA_OPTS" # list folder as tree
  alias llt="eza -lagT $EZA_OPTS" # list folder as tree
fi

alias -g :B='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

alias bathelp='bat --plain --language=help'
help() {
  "$@" --help 2>&1 | bathelp
}

#Tmux
alias tmux='tmux -u'
alias t='tmux'
alias ta='tmux attach-session -t'
alias tn='tmux new-session -s'
alias tl='tmux list-sessions'
alias tk='tmux kill-session -t'
