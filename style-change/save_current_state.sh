#!/bin/sh


files="waybar neofetch hypr kitty"

for file in $files; do
  echo $file
  save_to=~/.config/style-change/add_config/"$file"-confs
  save_from=~/.config/"$file"
  cp -r "${save_from}/." "${save_to}/"
  eval "sh ~/.config/style-change/style-change.sh create $1-$file $save_to $save_from"
done
