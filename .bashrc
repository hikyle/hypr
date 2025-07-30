#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

POSH=agnoster

alias c='clear'
alias ff='fastfetch'
alias ls='eza -a --icons=always'
alias ll='eza -al --icons=always'
alias lt='eza -a --tree --level=1 --icons=always'
alias grep='grep --color=always'
alias cleanup='sudo pacman -Rns $(pacman -Qdtq)'
alias cat='bat'
	
if [[ $(tty) == *"pts"* ]]; then
	fastfetch
fi

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
	. /usr/share/bash-completion/bash_completion

eval "$(oh-my-posh init bash --config robbyrussell)"
