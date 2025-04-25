#!usr/bin/env zsh

function handle_init_error {
  if [[ $? -ne 0 ]]; then
    echo "Error during initialization. Please check your configuration."
  fi
}

function command_not_found_handler {
  local purple='\e[1;35m' bright='\e[0;1m' green='\e[1;32m' reset='\e[0m'
  printf 'zsh: command not found: %s\n' "$1"
  local entries=( ${(f)"$(/usr/bin/pacman -F --machinereadable -- "/usr/bin/$1")"} )
  if (( ${#entries[@]} > 0 )); then
    printf "${bright}$1${reset} may be found in the following packages:\n"
    local pkg
    for entry in "${entries[@]}"; do
      local fields=( ${(0)entry} )
      if [[ "$pkg" != "${fields[2]}" ]]; then
        printf "${purple}%s/${bright}%s ${green}%s${reset}\n" "${fields[1]}" "${fields[2]}" "${fields[3]}"
      fi
      printf '    /%s\n' "${fields[4]}"
      pkg="${fields[2]}"
    done
  fi
  return 127
}

function no_such_file_or_directory_handler {
  local red='\e[1;31m' reset='\e[0m'
  printf "${red}zsh: no such file or directory: %s${reset}\n" "$1"
  return 127
}


