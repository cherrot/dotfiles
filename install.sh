#!/usr/bin/env zsh

set -e
set -o pipefail

# Darwin or Linux
OS=$(uname)

stow shell
stow tig

if [[ "${OS}" == "Linux" ]]; then
    stow alacritty.linux
    stow dmrc
    stow fontconfig
    stow i3
    stow picom
    stow rofi
    stow Xorg
    stow -t /etc _etc
elif [[ "${OS}" == "Darwin" ]]; then
    stow git
    stow alacritty.macos
fi
