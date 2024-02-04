#
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias PY='/home/joey/venv/bin/python'
alias PY3='/home/joey/venv/bin/python3'
alias PIP='/home/joey/venv/bin/pip'

alias rebash='source ~/.bashrc'
alias bashedit='nvim ~/.bashrc'

export PATH=/home/joey/.nimble/bin:$PATH
export PATH=/home/joey/scripts:$PATH
export XDG_CONFIG_DIRS=/home/joey/.config/rofi:$PATH

export PATH=/home/joey/venv/bin:$PATH

alias get='sudo pacman -S'
alias wiki='vim ~/vimwiki/index.wiki'
