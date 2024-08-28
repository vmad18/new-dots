#!/bin/bash 

im_path=/tmp/hyprlock_spoot

thumb() {

  page=$(playerctl -p spotify metadata --format '{{mpris:artUrl}}')
  if [ "${page}" = "$(cat "${im_path}.md")" ]; then
    return 0;
  fi 
  
  printf "%s\n" "$page" > "${im_path}.md"
  curl -so "${im_path}.png" "${page}"
  
  magick "${im_path}.png" -quality 50 "${im_path}.png"


}

thumb
