# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
source ~/.profile
export PS1='\[\033[01;32m\]\u:\[\033[01;36m\]\w\[\033[00m\]\ $ '

# set dir color
export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad 
export TMOUT=0

export PATH
export TMOUT=0
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
