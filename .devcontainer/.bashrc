# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

source ~/.bash_colors

alias l='exa -lFa --git'
alias h='history'
alias c='clear'
alias b='cd ..'
alias g='git'
alias cat='bat'
alias tb="nc termbin.com 9999"
alias jn='jupyter notebook --no-browser --port=8000 --ip=0.0.0.0 --allow-root'
alias jl='jupyter lab      --no-browser --port=8001 --ip=0.0.0.0 --allow-root'
alias jc='jupyter console'

export PS1="$c0\u$c3+$c0\h $u$c4\w$r :> "

. /opt/conda/etc/profile.d/conda.sh
conda activate py37
