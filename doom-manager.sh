#!/bin/bash

echo "Doom on the Lego Mindstorms EV3!"

if [[ -f "/etc/ev3dev-release" ]]; then
    if [[ "$1" == "install" ]]; then
        echo "Installing/Updating Doom..."
        sudo apt install -y chocolate-doom xorg xterm && echo "Success! run \"./doom-manager.sh play\" to play Doom!" || echo "Something went wrong!"
        cd "$( dirname "${BASH_SOURCE[0]}" )"
        sudo mkdir -p "/root/.local/share/chocolate-doom/"
        sudo cp "doom.cfg" "/root/.local/share/chocolate-doom/default.cfg"
        echo "Added config file"
    elif [[ "$1" == "play" ]]; then
        sudo DISPLAY=0 xinit /usr/games/chocolate-doom -nosound
    else 
        echo "Usage: \"./doom-manager play\" or \"./doom-manager install\""
    fi
else
    echo "This doesn't appear to be an EV3DEV system! Exiting..."
fi