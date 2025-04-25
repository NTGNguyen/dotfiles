#!usr/bin/env zsh

HISTSIZE=50000
HISTFILESIZE=50000
SAVEHIST=10000

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt share_history
