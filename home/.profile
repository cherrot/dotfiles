export PATH=$PATH:"$GOPATH/bin":$HOME/bin:$HOME/.local/bin

export GOPROXY=${GOPROXY_PREFIX}https://goproxy.cn,direct

export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

#Aliases:
#
alias lsport='lsof -Pnl +M -i4'
# alias lsport6='lsof -Pnl +M -i6'
alias vim=nvim
# make terminfo (TERM=xterm-kitty) consitant across ssh sessions.
alias ssh="TERM=xterm-256color ssh"
alias npm=pnpm
alias whoowns='pacman -Qo'
if command -v exa >/dev/null; then
	alias ls=exa
	alias ll='exa -l'
	alias l='exa -la'
fi

#alias tar='COPYFILE_DISABLE=1 tar' # For MacOS
#alias sed=gsed  # Use gnu-sed in MacOS
export EDITOR=nvim
export TERMINAL=kitty
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh

[[ -f $HOME/.cargo/env ]] && . "$HOME/.cargo/env"
[[ -f /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)
