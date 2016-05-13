source /home/dr/.alias

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space

# options
setopt autocd
unsetopt beep
unsetopt extendedglob

# completion
zstyle :compinstall filename '/home/dr/.zshrc'
autoload -Uz compinit
compinit

# vars
PS1="%(?..<%?>)%~ %# "
export PAGER=most
export MANPAGER=most
export MANTERM=xfce4-terminal