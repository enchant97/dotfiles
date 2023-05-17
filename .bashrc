#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

## Prompt ##
fastfetch
eval "$(starship init bash)"

## Tool Setup ##
eval "$(rbenv init - bash)"

## Exports ##
export PATH=~/.emacs.d/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.dotnet/tools:$PATH
export PATH=~/.emacs.d/bin:$PATH
export PATH=~/go/bin:$PATH
export GOPATH=~/go

## Aliases ##
alias ls='ls --color=auto'
alias ..='cd ..'
alias c='clear'
alias cls='clear'
alias neofetch='fastfetch'
alias htop="btop"
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
alias tree="exa -T -R -a"                                           # tree output showing all files
alias cat='bat'
alias m='make'

# Git aliases for SPEEEEED!
alias gpa='git push origin && git push sync'
alias ga='git add'
alias ga.='git add .'
alias gc='git commit'
