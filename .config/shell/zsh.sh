# zsh only
setopt hist_ignore_all_dups share_history
autoload -Uz compinit && compinit
PROMPT='%n@%m:%~ %# '
