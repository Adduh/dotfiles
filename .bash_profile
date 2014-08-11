[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh" # This loads nvm

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=ignoreboth

shopt -s histappend # append to the history file, don't overwrite it
shopt -s checkwinsize # check the window size after each command and, if necessary, update the values of LINES and COLUMNS.

export GIT_PS1_SHOWDIRTYSTATE=1 # unstaged (*) and staged (+) changes will be shown next to the branch name
export GIT_PS1_SHOWSTASHSTATE=1 # a '$' will be shown next to the branch name if something is stashed
export GIT_PS1_SHOWUNTRACKEDFILES=1 # a '%' will be shown next to the branch name if there're untracked files

export PS1='\[\e[0;93m\]\w \[\e[0;32m\]$(__git_ps1 "(%s)")\[\e[0m\]\$ '

alias grep='grep --color=auto'

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gp='git pull'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias gut='git '
alias get='git '

alias be='bundle exec '

alias vi='/usr/local/bin/vim'
alias t0='sudo sysctl -w kern.timer.coalescing_enabled=0'
alias t1='sudo sysctl -w kern.timer.coalescing_enabled=1'

alias mnt='mkdir /Volumes/mnt; sshfs netsaas@cld-2:/home/netsaas /Volumes/mnt/ && cd /Volumes/mnt'
alias umnt='umount -f /Volumes/mnt'

alias mnt1='mkdir /Volumes/mnt1; sshfs root@utm-1:/ /Volumes/mnt1/ && cd /Volumes/mnt1'
alias umnt1='umount -f /Volumes/mnt1'
alias mnt2='mkdir /Volumes/mnt2; sshfs root@utm-2:/ /Volumes/mnt2/ && cd /Volumes/mnt2'
alias umnt2='umount -f /Volumes/mnt2'
alias mnt5='mkdir /Volumes/mnt5; sshfs root@utm-5:/ /Volumes/mnt5/ && cd /Volumes/mnt5'
alias umnt5='umount -f /Volumes/mnt5'

export PATH="~/git/integration/scripts:$PATH"
export PATH="./node_modules/.bin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export CLOUD=2
export DISABLE_PHANTOMJS_LOG=1
export CABYBARA_TIMEOUT=30
