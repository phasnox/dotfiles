source ~/.command_aliases
source ~/.command_colors
source ~/.commnd_symbols
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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
