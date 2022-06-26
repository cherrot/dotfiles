#!/usr/bin/env zsh

set -e
set -o pipefail

# Darwin or Linux
OS=$(uname)

stow shell
stow dotconfig

if [[ "${OS}" == "Linux" ]]; then
    stow Xorg
    stow -t /etc _etc
elif [[ "${OS}" == "Darwin" ]]; then
    # stow dotconfig
    stow git
fi
