parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\h \[\e[32m\]\W \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

bind '"\e[A": history-substring-search-backward'
bind '"\e[B": history-substring-search-forward'

bind 'set completion-ignore-case on'
bind 'set colored-completion-prefix on'
bind 'set show-all-if-ambiguous on'

shopt -s autocd
