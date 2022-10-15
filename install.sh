#!/usr/bin/env zsh

set -e
set -o pipefail

# Darwin or Linux
OS=$(uname)

stow home

if [[ "${OS}" == "Darwin" ]]; then
    ;
elif [[ "${OS}" == "Linux" ]]; then
    #sudo stow -t /etc etc
    if [[ $XDG_SESSION_TYPE == "x11" ]]; then
        stow home4X
        sudo stow -t /etc etc4X
        sed -i 's/^font_size .*$/font_size 12.0/' home/.config/kitty/kitty.conf
    elif [[ $XDG_SESSION_TYPE == "wayland" ]]; then
        stow home4sway
        sudo stow -t /etc etc4sway
    else # tty
        ;
    fi
fi
