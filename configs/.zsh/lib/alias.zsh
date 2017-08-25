# Enable aliases to be sudo’ed
alias sudo='sudo '

alias cp='nocorrect cp'         # no spelling correction on cp
alias mkdir='nocorrect mkdir'   # no spelling correction on mkdir
alias mv='nocorrect mv'         # no spelling correction on mv
alias rm='nocorrect rm'         # no spelling correction on rm

alias ls='ls -hF --color=always'
alias l='ls -lFh'
alias ll='l -tr'
alias la='ls -la'
alias sl='ls'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias cd..='cd ..'

alias openports='netstat --all --numeric --programs --inet'

alias grep='grep --color=auto -n'

alias df='df -h'
alias du='du -c -h'