# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load starship prompt
__main() {
local major="${BASH_VERSINFO[0]}"
local minor="${BASH_VERSINFO[1]}"

if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
source <("/usr/bin/starship" init bash --print-full-init)
else
source /dev/stdin <<<"$("/usr/bin/starship" init bash --print-full-init)"
fi
}
__main
unset -f __main


## CUSTOM CONFIG ##
export PATH=~/.emacs.d/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.local/share/gem/ruby/3.0.0/bin:$PATH

alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles

alias cat='bat --style header --style rules --style snip --style changes --style header'

alias ..='cd ..'
alias ...='cd ../..'

alias c="clear"
alias cls="clear"

alias activate="source venv/bin/activate.fish"

set DOTNET_CLI_TELEMETRY_OPTOUT "1"
