source ~/.bash_colors
source /usr/share/git-core/contrib/completion/git-prompt.sh

# for examples
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


# Outputs the current branch if in a git repository
#source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_UNTRACKEDFILES=true

function get_color {
     echo $ResetColor"\[\e["$1"\]"
}

function get_dir() {
    printf "%s" $(pwd | sed "s:$HOME:~:")
}

function set_titlebar {
    case $TERM in
        *xterm*|ansi|rxvt)
            printf "\033]0;%s\007" "$*"
            ;;
    esac
}

# Color codes

# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37

Reset_Color="\[\e[0m\]"
Frame_Color=$(get_color "0;34m")
User_Color=$BBlue # $(get_color "0;33m")
At_Color=$(get_color "1;30m")
Host_Color=$(get_color "0;33m")
Git_Color=$(get_color "1;36m")
Path_Color=$(get_color "1;33m")
UID_Color=$(get_color "1;37m")

LatinCross='\342\234\235'
Omega='\316\251'
Sigma='\316\243'
Pen='\342\234\217'
Radioactive='\342\230\242'
ChessRock='\342\231\234'
BlackStar='\342\230\205'
CoolStar='\342\232\235 '
Skull='\342\230\240'

PromptSymbol=$LatinCross

. /etc/profile.d/vte.sh
PROMPT_COMMAND='__git_ps1 "\n\[\e[0;34m\]┌[$User_Color\u@\h$Frame_Color]─[$Path_Color\w$Frame_Color]─[$Git_Color" "$Frame_Color]\n\[\e[0;34m\]└[$UID_Color$PromptSymbol$Frame_Color]› $Reset_Color" "%s"; set_titlebar "$USER@${HOSTNAME%%.*} $(get_dir)"'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#export PS1='\[\e[44;1m\]@\[\e[0m\]:\[\e[37;1m\]\w\n\[\e[34;1m\]\u@\h\[\e[0m\]\$ '

parko_dir=/home/phasnox/Dropbox/projects/planz/parko/
infodesk_dir=/home/phasnox/Dropbox/projects/planz/infodesk/src
chalkbits_dir=/home/phasnox/Dropbox/projects/chalkbits

gp() { (grep -rni "$1" --include=$2 $3 | cut -c -150) }

# Shortcuts
alias jsonpp='python -c "import sys, json; print json.dumps(json.load(sys.stdin), sort_keys=True, indent=2)"'
alias beaglecon='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/nul root@192.168.7.2'
alias beagleupdate='scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/nul -r /home/phasnox/Dropbox/projects/planz/parko/src/backend/beaglebone/* root@192.168.7.2:parko'
alias ifconfig='sudo ifconfig'
alias swapfix='sudo swapoff -a && sudo swapon -a'

export PATH=$PATH:/home/phasnox/src/android/sdk/tools:/home/phasnox/src/android/sdk/platform-tools
export JAVA_HOME=/opt/jdk1.6.0_43/

alias apt-get="sudo apt-get"
alias dnf="sudo dnf"
alias yum="sudo yum"
alias gvim="gvim -geometry 500x500"
alias vim="vimx"
alias unetbootin="sudo QT_X11_NO_MITSHM=1 /usr/bin/unetbootin"

alias tmux="env TERM=xterm-256color tmux"
alias tm="env TERM=xterm-256color tmux new-session -c $(pwd)"
alias tn="env TERM=xterm-256color tmux new-session"
alias ta="env TERM=xterm-256color tmux attach"
alias ubiqmine="~/Downloads/ethminer/bin/ethminer -F http://us.ubiqpool.io:8888/0x5c09b05e52f6d4031f1d0f0a54b52340546fa59f/om1 -G --farm-recheck 200"
alias ethmine="~/Downloads/ethminer/bin/ethminer -F http://eth-us-east1.nanopool.org:8888/0xA8E43F40EF568B5BcC9Cfd2B8ED1173BcCd4a24E/grumpy/phasnox@gmail.com -G"

alias gitfixup="git commit -a --fixup HEAD && git rebase -i --autosquash HEAD~2"

alias prokey="python ~/src/python/prokey.py"
alias bgyekey="python ~/src/python/bgyeKey.py"
pythonaddmod() {
    mkdir $1 && touch "$1/__init__.py"
}
#alias docker-rmi="docker rmi $(docker images --quiet --filter "dangling=true")"
#alias docker-rmc="docker rm $( docker ps -q -f status=exited)"

ssh-agent-start() {
  eval $(ssh-agent)
  ssh-add ~/.ssh/work
  ssh-add ~/.ssh/personal
}

# Sequbot
alias sequbot="(cd ~/src/sequbot/sequbot_data && docker-compose up -d) &&(cd ~/src/sequbot/sequbot_ai && docker-compose up -d)"
alias sbdb="cd ~/src/sequbot/sequbot_data && docker exec -it sequbot-database bash"
alias sbshell="cd ~/src/sequbot/sequbot_ai && docker exec -it sequbotai_node_1 bash"
alias zecminer="cd ~/Downloads/zecminer/0.3.4b/ && ./miner"


#=============
# iSeatz stuff
#=============
export PATH="$HOME/.rbenv/bin:$PATH"
coa() {
    git co AXPT-$1
}
export SKIP_SAML="yes"
alias iszvpn='(cd /home/phasnox/Dropbox/bairesdev/ && sudo openvpn --config bairesdev_gcastillo-zephyr-config.ovpn)'
alias iszapi='cd ~/src/iseatz/developer-setup && vagrant up api && vagrant ssh api'
alias iszamex='cd ~/src/iseatz/developer-setup && vagrant up amex && vagrant ssh amex'
alias iszihg='cd ~/src/iseatz/developer-setup && vagrant up z2 && vagrant ssh z2'
alias iszdb='psql -h 54.208.90.157 -U postgres simian_qa'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
