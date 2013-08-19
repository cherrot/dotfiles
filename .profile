# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
#if [ -d "$HOME/bin" ] ; then
#    PATH="$HOME/bin:$PATH"
#fi

#export LANGUAGE="zh_CN:en"
#export LC_MESSAGES="zh_CN.UTF-8"
#export LC_CTYPE="zh_CN.UTF-8"
#export LC_COLLATE="zh_CN.UTF-8"
#export LANG="zh_CN.UTF-8"

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
# FESTVOXDIR=/opt/festival/festvox
# ESTDIR=/opt/festival/speech_tools
# AXIS2_HOME=/home/cherrot/code/Libraries/axis2-1.6.1
# JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

#alias xclip='xclip -sel clip'
#alias sshf='ssh -TfnND 8090'

export LESS_TERMCAP_mb=$'\E[05;34m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;34m'       # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[44;33m'       # begin standout-mode
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;33m'       # begin underline

PYTHONPATH=$HOME/.local/lib/python2.7/site-packages
if [ -d "$HOME/data" ] ; then
    export DATA=$HOME/data
fi
if [ -d "$HOME/tmp" ] ; then
    export TMP=$HOME/tmp
fi
