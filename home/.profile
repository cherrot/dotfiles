export GOPATH=~/go
export PATH=$PATH:"$GOPATH/bin":$HOME/bin:$HOME/.local/bin
# export GOPROXY=https://goproxy.io                                  # 配置go module代理，绕过GFW下载golang.org下的package
export GOPRIVATE=git-pd.megvii-inc.com,go.megvii-inc.com,bistro.sh # gitlab域名下的模块绕过GOPROXY

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

#alias tar='COPYFILE_DISABLE=1 tar' # For MacOS
#alias sed=gsed  # Use gnu-sed in MacOS
export EDITOR=nvim
export TERMINAL=kitty
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/keyring/ssh
