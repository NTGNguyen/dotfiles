# Detect AUR wrapper and cache it for faster subsequent loads
aur_cache_file="/tmp/.aurhelper.zshrc"
if [[ -f $aur_cache_file ]]; then
  aurhelper=$(<"$aur_cache_file")
else
  if pacman -Qi yay &>/dev/null; then
    aurhelper="yay"
  elif pacman -Qi paru &>/dev/null; then
    aurhelper="paru"
  fi
  echo "$aurhelper" > "$aur_cache_file"
fi

