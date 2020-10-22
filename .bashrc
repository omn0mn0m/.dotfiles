#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/omn0mn0m/.byobu/prompt ] && . /home/omn0mn0m/.byobu/prompt   #byobu-prompt#

# Sets up dotfile alias
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
