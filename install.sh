#!/usr/bin/env zsh

set -e
set -o pipefail

# Darwin or Linux
OS=$(uname)

#stow bin
stow shell
stow tig
stow dotconfig

if [[ "${OS}" == "Darwin" ]]; then
    stow git
elif [[ "${OS}" == "Linux" ]]; then
    #sudo stow -t /etc etc

    if [[ $XDG_SESSION_TYPE == "x11" ]]; then
        stow home4X
        sudo stow -t /etc etc4X
    else
        stow home4sway
        sudo stow -t /etc etc4sway
    fi
fi
