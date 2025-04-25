#!usr/bin/env zsh

function cleanup {
  rm -f /tmp/.hyde_slow_load_warning.lock
}

trap cleanup EXIT
