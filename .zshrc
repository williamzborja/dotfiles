# Oh My ZSH config
export ZSH="$HOME/.oh-my-zsh"

CASE_SENSITIVE="true"

export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='nvim'

. ~/.aliases # add aliases
export PATH="$PATH:$HOME/.local/bin"
# Rust completitions
fpath+=${ZDOTDIR:-~}/.zsh_functions


. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
