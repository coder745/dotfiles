#### ALIASES ####
alias vi=vim
export EDITOR=vi
export HISTSIZE=1000
alias ll='ls -l'
alias cd..="cd .."
alias cls='clear'
alias myip='curl ip.appspot.com' 
alias editHosts='sudo edit /etc/hosts' 
alias reload='source ~/.profile'
alias f='open -a Finder ./'
alias f='open -a Finder ./'
alias openports='sudo lsof -i | grep LISTEN' 
theos="$(uname)"

#### FUNCTIONS ####
httpHeaders () { /usr/bin/curl -I -L $@ ; }

extract () {
if [ -f $1 ] ; then
  case $1 in
	*.tar.bz2)   tar xjf $1     ;;
	*.tar.gz)    tar xzf $1     ;;
	*.bz2)       bunzip2 $1     ;;
	*.rar)       unrar e $1     ;;
	*.gz)        gunzip $1      ;;
	*.tar)       tar xf $1      ;;
	*.tbz2)      tar xjf $1     ;;
	*.tgz)       tar xzf $1     ;;
	*.zip)       unzip $1       ;;
	*.Z)         uncompress $1  ;;
	*.7z)        7z x $1        ;;
	*)     echo "'$1' cannot be extracted via extract()" ;;
	 esac
 else
	 echo "'$1' is not a valid file"
 fi
}

mkfull() {
    mkdir -p $1
    cd $1
}

#### COLORS #####

black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'




