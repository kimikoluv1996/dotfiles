#
# ~/.bashrc
#

source /home/joey/.myfuncs
source /home/joey/MACs.txt
source /home/joey/ATOKEN

DOTFILES="/home/joey/Documents/repos/dotfiles"
DOWNLOADS="/home/joey/Downloads"
MY_WM_CFG="$DOTFILES/herbstluftwm/autostart"
GAMES="${HOME}/Games"
ROMS="$GAMES/roms"
PROJ="/home/joey/Documents/repos/projects"

export EDITOR=vim

#git username and email
USERNAME="kimikoluv1996"
EMAIL="$USERNAME@proton.me"

export PATH=$PATH:/home/joey/.local/bin

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias bed="vim $DOTFILES/.bashrc"
alias rebash='source /home/joey/.bashrc'
alias fedit="vim $HOME/.myfuncs"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

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
alias b='buku --suggest'
alias lsn='nnn -de'
alias proj="cd $PROJ"

alias wed="vim $MY_WM_CFG"
alias poed="vim $DOTFILES/polybar/.config/polybar/config"

alias gcl='git clone'
alias gs="git status"
alias ga='git add --all'
alias gc='git commit -m'
alias gp='git push'

alias lutris='flatpak run net.lutris.Lutris'
alias emu='mednafen'
sonic(){
    case "$@" in
	    1)
	      emu "$ROMS/genesis/sonic.md"
	      ;;
	    2)
	      emu "$ROMS/genesis/sonic2.md"
	      ;;
	    3)
		emu "$ROMS/genesis/sonic3.md"
	        ;;
            *)
		echo "invalid argument"
		echo "select 1, 2, or 3"
		;;
    esac
}

gcfg(){
   git config user.name "$USERNAME"
   git config user.email "$EMAIL"
}
