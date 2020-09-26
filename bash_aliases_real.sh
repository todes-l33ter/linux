touch /home/$USER/.bash_aliases
cat <<E0F >> /home/$USER/.bash_aliases

alias ll='ls --group-directories-first -lah'
alias grep='grep --color=auto'
alias c='clear'
alias untar='tar -zxvf'
alias a='alias'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# handy short cuts #
alias h='history'
alias j='jobs -l'

## this one saved by butt so many times ##
alias wget='wget -c'

## set some other defaults ##
alias df='df -H'
alias du='du -ch'

# top is atop, just like vi is vim
alias top='atop'

# file tree
alias tr="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# list folders by size in current directory
alias gross="du -h --max-depth=1 | sort -rh"

# # count # of lines
alias wcl='wc -l'

# Find a file from the current directory
alias ff='find . -name '

alias rmf='rm -rf -i'

#this will alias two commands mkdir and cd to one mkcd command
alias mkcd='mkdircd(){ mkdir $1; cd $1; }; mkdircd'

# starts nano with line number enabled
alias nano='nano -c'

# Sort directories by sizes
alias dush='du -h --max-depth=1 | sort -h'

# Can't see all the files in one page ?
alias lsless='ls | less'

# Finding the 20 lagrest directories
alias dudu='du -S / | sort -nr | head -n50'

# CD und LS
function cdls()
{
  builtin cd $*
  ls -lhaG
}

alias cdls='cdls'

E0F
bash
