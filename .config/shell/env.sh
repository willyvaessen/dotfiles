# idem double-source guard
[ -n "${_ENV_SHARED_LOADED:-}" ] && return
_ENV_SHARED_LOADED=1


# Path variabele aanvullen
export PATH="$HOME/.local/bin:$PATH"

# env die overal werkt
export EDITOR=vim
export PAGER=less
# XDG: voorkom rommel in $HOME
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export TERM=xterm-256color
