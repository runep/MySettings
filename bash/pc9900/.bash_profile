#  PS1='\e[32mpwd:\e[31;1m \W$(__git_ps1 "(%s)")\n$ \e[0m'
#  PS1='\[\32]0;$MSYSTEM:\e[31;1m \W$(__git_ps1 "(%s)")\$ \e[0m'
#  PS1='\e[32MSYSTEM:\e[31;1m \W$(__git_ps1 "(%s)")\$ \e[0m'

#  PS1="\n\[\033[35m\]\$(/bin/date)\n\[\033[32m\]\w\n\[\033[1;31m\]\u@\h: \[\033[1;34m\]\$(/usr/bin/tty | /bin/sed -e 's:/dev/::'): \[\033[1;36m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \[\033[1;33m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\033[0m\] -> \[\033[0m\]"

# OK PS1='\[\033]0;$MSYSTEM:\w\007 \033[32m\]\u@\h \[\033[33m\w$(__git_ps1)\033[0m\] $'
#PS1='\[\033[35m\]\d\n\[\033]0;$MSYSTEM:\w\007 \033[32m\]\u@\h \[\033[33m\w$(__git_ps1)\033[0m\] $'
PS1="\[\033]0;$MSYSTEM:\w\007 \033[32m\]\u@\h \[\033[33m\w$(__git_ps1)\033[0m\] $"


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#SETTING   SET
set -o vi



#set_my_prompt

#PROMPT_COMMAND='set_term_title "${PWD##*/}"'

# Some aliases I find useful
alias gclb="git checkout -b"
alias gb="git branch"
alias gba="git branch -a"
alias gs="git status"
alias gca="git commit -a"
alias gcav='git commit -av'
alias gcm="git commit -m"
alias gk="gitk --all &"
alias gd='git diff | mate'
alias gl='git pull origin master'
alias gp='git push origin master'
alias gp?='git log --pretty=oneline origin/master..HEAD'
alias gpcd='git push origin master && cap deploy'
alias gpom='git pull origin master'

alias ss="script/server"
alias ssp="script/server -p"
alias sr="script/runner"

# some more ls aliases
#alias ll='ls -alF --color=auto'
alias ll="ls -lhFG --color=auto"

alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

alias ls="ls -FG --color=auto"
alias dir="ll"
alias gemlist='gem list | egrep -v "^( |$)"'
alias top='top -ocpu'

alias mbp='mate ~/.bash_profile'
alias sbp='source ~/.bash_profile'
