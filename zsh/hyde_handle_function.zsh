#!usr/bin/env zsh

function handle_init_error {
  if [[ $? -ne 0 ]]; then
    echo "Error during initialization. Please check your configuration."
  fi
}

function no_such_file_or_directory_handler {
  local red='\e[1;31m' reset='\e[0m'
  printf "${red}zsh: no such file or directory: %s${reset}\n" "$1"
  return 127
}


