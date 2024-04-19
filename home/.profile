export GOPATH=~/go
export PATH=$PATH:"$GOPATH/bin":$HOME/bin:$HOME/.local/bin
export GOPROXY=https://goproxy.cn,direct
export GOPRIVATE=gitlab.basemind.com,git-pd.megvii-inc.com,go.megvii-inc.com,bistro.sh # gitlab域名下的模块绕过GOPROXY

export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

#export http_proxy=http://user:pass%2B%2B@host:port/
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

# [[ -f /usr/bin/virtualenvwrapper.sh ]] && source /usr/bin/virtualenvwrapper.sh
# wrapper_osx=$HOME/Library/Python/2.7/bin/virtualenvwrapper.sh
# [[ -f $wrapper_osx ]] && source $wrapper_osx

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
