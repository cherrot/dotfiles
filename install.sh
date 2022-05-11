#!/usr/bin/env zsh

set -e
set -o pipefail

# Darwin or Linux
OS=$(uname)

stow shell
stow tig

if [[ "${OS}" == "Linux" ]]; then
    stow dotconfig
    stow alacritty.linux
    stow dmrc
    stow Xorg
    stow -t /etc _etc
elif [[ "${OS}" == "Darwin" ]]; then
    # stow dotconfig
    stow git
    stow alacritty.macos
fi
