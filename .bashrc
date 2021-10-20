#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias server='192.168.178.202'
alias sshserver='ssh -L localhost:8080:localhost:8080 192.168.178.202'
PS1='[\u@\h \W]\$ '

PATH=/home/panchoop/.local/bin:/usr/local/texlive/2021/bin/x86_64-linux:$PATH;
export PATH
MANPATH=/usr/local/texlive/2021/texmf-dist/doc/man:$MANPATH; export MANPATH
INFOPATH=/usr/local/texlive/2021/texmf-dist/doc/info:$INFOPATH; export INFOPATH
