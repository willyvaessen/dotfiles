# --- Powerlevel10k dispatcher ---
# Eén bestand dat P10k verwacht, dat zelf de juiste profiel-config laadt.

# Zet de wizard expliciet uit; we beheren de config zelf.
typeset -g POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# Optioneel: instant prompt kan soms "hangen" op exotische omgevingen.
# Zet tijdelijk uit voor debug, of gebruik 'quiet' voor minder spam.
# typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
# typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Kies config: TTY (TERM=linux) -> ASCII; anders fancy
() {
  local cfg_tty=$HOME/.config/shell/p10k.tty.zsh
  local cfg_fancy=$HOME/.config/shell/p10k.fancy.zsh
  local use=$cfg_fancy

  # Houd de detectie simpel en snel voor early/instant load:
  if [[ $TERM == linux ]]; then
    use=$cfg_tty
  fi

  # Val terug op fancy als tty-config ontbreekt
  [[ -r $use ]] || use=$cfg_fancy
  [[ -r $use ]] && source "$use"
}
# --- end dispatcher ---
