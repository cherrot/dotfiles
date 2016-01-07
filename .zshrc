## Lines configured by zsh-newuser-install
#HISTFILE=~/.histfile
#HISTSIZE=1000
#SAVEHIST=10240
#bindkey -v
## End of lines configured by zsh-newuser-install
## The following lines were added by compinstall
#zstyle :compinstall filename '/home/cherrot/.zshrc'
#
#autoload -Uz compinit
#compinit
## End of lines added by compinstall
#
## The following line were added by myself 
#default editor
export EDITOR="vim"
export TERM='xterm-256color'
export GOPATH=~/dev/go

wrapper_path=$HOME/Library/Python/2.7/bin/virtualenvwrapper.sh
if [[ -f $wrapper_path ]]; then
    source $wrapper_path
fi

#export http_proxy=http://user:pass%2B%2B@host:port/
#export https_proxy=$http_proxy
#export ftp_proxy=$http_proxy
#export rsync_proxy=$http_proxy
#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

#Aliases: 
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
## For autocompletion of command line switches for aliases
#setopt completealiases
## show history which matches the current input.
#bindkey "^[[A" history-search-backward
#bindkey "^[[B" history-search-forward
## set up a colored prompt in Zsh
#autoload -U promptinit
#promptinit
#prompt pws
#
######################## USE oh-my-zsh INSTEAD ###########################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
