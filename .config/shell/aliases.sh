# voorkomen dat we dit bestand dubbel sourcen
[ -n "${_ALIASES_SHARED_LOADED:-}" ] && return
_ALIASES_SHARED_LOADED=1

# alleen in interactieve shells
case $- in *i*) : ;; *) return ;; esac

# portable aliassen/funcs
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto 2>/dev/null || grep'  # degrade gracefully
motd() { cat /etc/motd | ${PAGER:-less}; }
