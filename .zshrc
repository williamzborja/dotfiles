# Oh My ZSH config
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
CASE_SENSITIVE="true"

plugins=(git sudo fzf tmux)

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='nvim'

. ~/.aliases # add aliases
export PATH="$PATH:$HOME/.local/bin"
# Rust completitions
fpath+=${ZDOTDIR:-~}/.zsh_functions
# starship prompt configu
eval "$(starship init zsh)"

