#!/usr/bin/env python3

import subprocess

result = subprocess.run(["sh", "/home/v18/hypr-dotfiles/dot_config/waybar/scripts/spotify/scroll_status.sh"], stdout=subprocess.PIPE)

while 1==1:
    print(result.stdout)
