# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt nomatch notify
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/panchoop/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PATH=$PATH:/home/panchoop/.local/bin:/usr/local/texlive/2021/bin/x86_64-linux

plugins=(vi-mode colored-man-pages)
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

# Matlab script path
export MATLABPATH=/home/panchoop/Dropbox/Francisco/misc/daemons
# To find tesseract
export TESSDATA_PREFIX=/usr/share/tessdata
# For Qt5 to find plugins
export QT_PLUGIN_PATH=/usr/lib/qt/plugins

# Color Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
