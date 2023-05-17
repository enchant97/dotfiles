#
# ~/.config/fish/config.fish
#
set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT "1"

## Prompt ##
if status --is-interactive
    fastfetch
    starship init fish | source
end

## Aliases ##
abbr -a ls 'ls --color=auto'
abbr -a .. 'cd ..'
abbr -a c 'clear'
abbr -a cls 'clear'
abbr -a neofetch 'fastfetch'
abbr -a htop 'btop'
abbr -a ls 'exa -al --color=always --group-directories-first --icons' # preferred listing
abbr -a la 'exa -a --color=always --group-directories-first --icons'  # all files and dirs
abbr -a ll 'exa -l --color=always --group-directories-first --icons'  # long format
abbr -a lt 'exa -aT --color=always --group-directories-first --icons' # tree listing
abbr -a tree "exa -T -R -a"                                           # tree output showing all files
abbr -a l. "exa -a | egrep '^\.'"                                     # show only dotfiles
abbr -a cat 'bat'
abbr -a m 'make'

# Git aliases for SPEEEEED!
abbr -a gpa 'git push origin && git push sync'
abbr -a ga 'git add'
abbr -a ga. 'git add .'
abbr -a gc 'git commit'


## PATH additions ##
fish_add_path ~/.dotnet/tools
fish_add_path ~/.emacs.d/bin
fish_add_path ~/go/bin
fish_add_path ~/.cargo/bin

## Exports ##
set GOPATH ~/go
set DOTNET_CLI_TELEMETRY_OPTOUT "1"
