#
# ~/.bashrc
#

source /home/joey/.myfuncs
source /home/joey/MACS

DOTFILES="/home/joey/Repos/dotfiles"
DOWNLOADS="/home/joey/Downloads"
MY_WM_CFG="$HOME/.config/herbstluftwm/autostart"
GAMES="${HOME}/Games"
ROMS="$GAMES/Roms"
PROJ="/home/joey/Code/projects"

export EDITOR=vim
export TERMINAL=st

#git username and email
USERNAME="kimikoluv1996"
EMAIL="$USERNAME@proton.me"

export PATH=$PATH:/home/joey/.local/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias bedit="vim $HOME/.bashrc"
alias rebash="source $HOME/.bashrc"
alias fedit="vim $HOME/.myfuncs"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='[\u@\h \W]\$ '

alias get='sudo pacman -Sy'
alias update='sudo pacman -Syu'
alias h='cd /home/joey'
alias cdl="cd $DOWNLOADS"
alias cdot="cd $DOTFILES"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .4='cd ../../../..'
alias rt='cd /'
alias blctl='bluetoothctl'
alias blcon="blctl connect $EARBUDS"
alias blcons="blctl connect $SPEAKER"
alias bdcon="blctl disconnect"
alias pad="blctl connect $PAD"
alias ffx='firefox 2> /dev/null &'
alias lsn='nnn -de'
alias prj="cd $PROJ"

alias wed="vim $MY_WM_CFG"
alias poed="vim $DOTFILES/polybar/.config/polybar/config"

alias gcl='git clone'
alias gs="git status"
alias ga='git add --all'
alias gc='git commit -m'
alias gp='git push'

alias lutris='flatpak run net.lutris.Lutris'
alias msg='kdeconnect-cli -n phone2k --ping-msg'

gcfg(){
   git config user.name "$USERNAME"
   git config user.email "$EMAIL"
}
