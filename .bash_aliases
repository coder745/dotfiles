#### ENVIRONMENT VARIABLES ####
export DOCKER_HIDE_LEGACY_COMMANDS=true

#### #ALIASES ####
theos=uname
alias vi=vim
# alias vim=nvim
export EDITOR=vi
export HISTSIZE=1000


alias ll='ls -l'
alias lsa='ls -lShF --color'
alias cd..="cd .."
alias ..="cd .."
alias cls='clear'
alias c='clear'
alias myip='curl ip.appspot.com' 
alias att="attach.py raneto"
alias editHosts='sudo edit /etc/hosts' 
alias reload='source ~/.bashrc'
alias openports='sudo lsof -i | grep LISTEN' 

alias cpu='top -o cpu'
alias mem='top -o rsize'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias wget='wget -c'

alias gs='clear && git status'
alias gss='git stash save'

alias cb='git branch | grep "*"'
alias cleanbranches='git branch | grep -v master | xargs git branch -D'

#### Programming ####
alias be='bundle exec'
alias ber='bundle exec rspec'
alias byr='bundle install && yarn install --check-files && rails s'

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
stopc='\e[m'


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

#TMUX:
alias tmuxa="tmux attach -t"
alias tmuxl="tmux ls"
alias tmuxn="tmux new-session -s"

#Linux Only:
if [ $theos = "Linux" ]; then
    alias ls='ls --color'
    ipaddr() {
        ip addr | grep inet | awk '{print $2}' | awk 'NR==3{ print; }'
    }
fi

#Mac Only:
if [ $theos = "Darwin" ]; then
    alias f='open -a Finder ./'
    alias f='open -a Finder ./'
fi
