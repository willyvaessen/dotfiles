#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# shared
[ -r "$HOME/.config/shell/env.sh" ]     && . "$HOME/.config/shell/env.sh"
[ -r "$HOME/.config/shell/aliases.sh" ] && . "$HOME/.config/shell/aliases.sh"

# bash-specifiek
[ -r "$HOME/.config/shell/bash.sh" ]    && . "$HOME/.config/shell/bash.sh"

