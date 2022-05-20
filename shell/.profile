export GOPATH=~/go
export PATH=$PATH:/usr/local/sbin:"$GOPATH/bin":$HOME/bin:$HOME/.local/bin
export PATH="$PATH:${KREW_ROOT:-$HOME/.krew}/bin"
export GOPROXY=https://goproxy.io                                  # 配置go module代理，绕过GFW下载golang.org下的package
export GOPRIVATE=git-pd.megvii-inc.com,go.megvii-inc.com,bistro.sh # gitlab域名下的模块绕过GOPROXY

#export http_proxy=http://user:pass%2B%2B@host:port/
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

# export LESS_TERMCAP_mb=$'\E[05;34m' # begin blinking
# export LESS_TERMCAP_md=$'\E[01;34m' # begin bold
# export LESS_TERMCAP_me=$'\E[0m'     # end mode
# export LESS_TERMCAP_se=$'\E[0m'     # end standout-mode
# export LESS_TERMCAP_so=$'\E[44;33m' # begin standout-mode
# export LESS_TERMCAP_ue=$'\E[0m'     # end underline
# export LESS_TERMCAP_us=$'\E[04;33m' # begin underline

# [[ -f /usr/bin/virtualenvwrapper.sh ]] && source /usr/bin/virtualenvwrapper.sh
# wrapper_osx=$HOME/Library/Python/2.7/bin/virtualenvwrapper.sh
# [[ -f $wrapper_osx ]] && source $wrapper_osx

#Aliases:
#
alias lsport='lsof -Pnl +M -i4'
#alias lsport6='lsof -Pnl +M -i6'
alias vim=nvim

alias pacupg='sudo pacman -Syu'  # 同步软件仓库信息然后升级系统
alias aurupg='yaourt -Syu --aur' # 同步软件仓库信息然后升级系统
alias pacin='sudo pacman -S'     # 从软件仓库安装软件包
alias pacins='sudo pacman -U'    # 从本地文件安装软件包
alias pacre='sudo pacman -R'     # 删除软件包，保留配置和依赖
alias pacrem='sudo pacman -Rns'  # 彻底删除软件包，清除配置，删除无用依赖
alias pacrep='pacman -Si'        # 显示软件仓库中某软件包的信息
alias pacreps='pacman -Ss'       # 在软件仓库搜索软件包
alias pacloc='pacman -Qi'        # 显示本地数据库中某软件包的信息
alias paclocs='pacman -Qs'       # 在本地数据库搜索软件包
alias pacfile='pacman -Qo'       # 根据文件搜索软件包
alias pacmir='sudo pacman -Syy'  # 强制刷新软件仓库信息

#[[ $(command -v dircolors) && -d ~/.dir_colors ]] && eval `dircolors ~/.dir_colors/dircolors`

#alias tar='COPYFILE_DISABLE=1 tar' # For MacOS
#alias sed=gsed  # Use gnu-sed in MacOS

export EDITOR=vim
export TERMINAL=kitty
export GPG_TTY=$(tty)
