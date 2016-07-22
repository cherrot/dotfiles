export GOPATH=~/dev/go
export PATH=$PATH:"$GOPATH/bin"
export GO15VENDOREXPERIMENT=1


#export http_proxy=http://user:pass%2B%2B@host:port/
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

wrapper_path=$HOME/Library/Python/2.7/bin/virtualenvwrapper.sh
[[ -f $wrapper_path ]] && source $wrapper_path

#Aliases: 
#
# Fix irssi scroll problem on tmux. see https://www.wisdomandwonder.com/link/7784/making-irssi-refresh-work-with-tmux
alias irssi='TERM=screen-256color irssi'
#alias gpush='git push origin' #use ggpush
alias lsport='lsof -Pnl +M -i4'
#alias lsport6='lsof -Pnl +M -i6'

alias pacupg='sudo pacman -Syu'   # 同步软件仓库信息然后升级系统
alias aurupg='yaourt -Syu --aur'   # 同步软件仓库信息然后升级系统
alias pacin='sudo pacman -S'      # 从软件仓库安装软件包
alias pacins='sudo pacman -U'     # 从本地文件安装软件包
alias pacre='sudo pacman -R'      # 删除软件包，保留配置和依赖
alias pacrem='sudo pacman -Rns'   # 彻底删除软件包，清除配置，删除无用依赖
alias pacrep='pacman -Si'         # 显示软件仓库中某软件包的信息
alias pacreps='pacman -Ss'        # 在软件仓库搜索软件包
alias pacloc='pacman -Qi'         # 显示本地数据库中某软件包的信息
alias paclocs='pacman -Qs'        # 在本地数据库搜索软件包
alias pacmir='sudo pacman -Syy'   # 强制刷新软件仓库信息
