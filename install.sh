#!/usr/bin/env zsh

set -e
set -o pipefail

# Darwin or Linux
OS=$(uname)

stow home

if [[ "${OS}" == "Darwin" ]]; then
    sed -i 's/^font_size .*$/font_size 14.0/' home/.config/kitty/kitty.conf
elif [[ "${OS}" == "Linux" ]]; then
    sudo stow -t /etc etc
    if [[ $XDG_SESSION_TYPE == "x11" ]]; then
        stow home4X
        sudo stow -t /etc etc4X
        sed -i 's/^font_size .*$/font_size 12.0/' home/.config/kitty/kitty.conf
    elif [[ $XDG_SESSION_TYPE == "wayland" ]]; then
        # Xwayland does not support scale, Chrome/Electron on wayland does not supoort IME.
        # I decide to use Wayland without scale, to make XWayland work as expected.
        # stow home4sway
        sudo stow -t /etc etc4sway
    else # tty
        ;
    fi
fi
