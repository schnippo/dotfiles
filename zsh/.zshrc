# Luke's config for the Zoomer Shell
# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
autoload -Uz vcs_info
zstyle ':vcs_info:git*' formats "%b"
precmd() { vcs_info }
setopt prompt_subst
export PROMPT='[content]${vcs_info_msg_0_}[content]'
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# PS1="%F{208}%m%F{015}:%F{039}%~%${vss_info_msg_0_}\ "
# PS1="%F{039}%~ ${vss_info_msg_0_} %#\ "
# PS1="%F{039}%~%f ${?} %#\ "

zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }
# PS1='%F{15}[%F{2}%n%F{15}] %F{3}%3~ ${vcs_info_msg_0_}%f%# '
PS1="%? %~ ${vcs_info_msg_0_}"
# PS1='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f '
PS1='%F{7}$? %F{3}%3~ %F{8}${vcs_info_msg_0_}%f '
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
#bindkey -v
#export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey -M main -r "^["

# create an no operation function to unbind keys below
function nop () {}
zle -N nop

function lk {
  cd "$(walk --icons "$@")"
}
## Change cursor shape for different vi modes.
#function zle-keymap-select () {
#    case $KEYMAP in
#        vicmd) echo -ne '\e[1 q';;      # block
#        viins|main) echo -ne '\e[5 q';; # beam
#    esac
#}
#zle -N zle-keymap-select
#zle-line-init() {
#    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#    echo -ne "\e[5 q"
#}
#zle -N zle-line-init
#echo -ne '\e[5 q' # Use beam shape cursor on startup.
#preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
#
## Use lf to switch directories and bind it to ctrl-o
#lfcd () {
#    tmp="$(mktemp -uq)"
#    trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
#    lf -last-dir-path="$tmp" "$@"
#    if [ -f "$tmp" ]; then
#        dir="$(cat "$tmp")"
#        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
#    fi
#}
# bindkey -s '^o' '^ulfcd\n'


bindkey '^u' backward-kill-line
bindkey '^k' kill-line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
bindkey '^w' delete-word
bindkey '^b' backward-delete-word
bindkey '^[b' backward-delete-word

bindkey '^[[1;2D' backward-word
bindkey '^[[1;2C' forward-word

bindkey '^[[1;5D' vi-backward-word
bindkey '^[[1;5C' vi-forward-word

bindkey '^[[1;6D' vi-backward-blank-word
bindkey '^[[1;6C' vi-forward-blank-word


bindkey '^H' backward-delete-word
bindkey '^[[M' delete-word
bindkey '^R' history-incremental-search-backward
bindkey '^[[1;2A' up-history
bindkey '^[[1;5A' up-history
bindkey '^[[1;6A' up-history
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^[p' up-history
bindkey '^[n' down-history
bindkey '^[[1;2B' down-history
bindkey '^[[1;5B' down-history
bindkey '^[[1;6B' down-history
bindkey '^[[H' vi-beginning-of-line
bindkey '^[[4~' end-of-line

function clear-scrollback-buffer {
  # Behavior of clear: 
  # 1. clear scrollback if E3 cap is supported (terminal, platform specific)
  # 2. then clear visible screen
  # For some terminal 'e[3J' need to be sent explicitly to clear scrollback
  clear && printf '\e[3J'
  # .reset-prompt: bypass the zsh-syntax-highlighting wrapper
  # https://github.com/sorin-ionescu/prezto/issues/1026
  # https://github.com/zsh-users/zsh-autosuggestions/issues/107#issuecomment-183824034
  # -R: redisplay the prompt to avoid old prompts being eaten up
  # https://github.com/Powerlevel9k/powerlevel9k/pull/1176#discussion_r299303453
  zle && zle .reset-prompt && zle -R
}

zle -N clear-scrollback-buffer
bindkey '^[l' clear-scrollback-buffer





bindkey -s '^g' 'cd $(dirname "$(fzf)")\n'
bindkey -s '^f' '"$(fzf)"\n'
bindkey -s '^N' '^a#\nsetsid -f st -e zsh\n'
bindkey -s '^O' '^usx -o * > choice && [ -s "choice" ] || \\rm choice\n'


bindkey '^[[P' delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

# unbinding arrows key combinations with alt
bindkey '^[[1;3A' nop
bindkey '^[[1;4A' nop 
bindkey '^[[1;7A' nop
bindkey '^[[1;8A' nop

bindkey '^[[1;3B' nop
bindkey '^[[1;4B' nop 
bindkey '^[[1;7B' nop
bindkey '^[[1;8B' nop

bindkey '^[[1;3C' nop
bindkey '^[[1;4C' nop 
bindkey '^[[1;7C' nop
bindkey '^[[1;8C' nop

bindkey '^[[1;3D' nop
bindkey '^[[1;4D' nop 
bindkey '^[[1;7D' nop
bindkey '^[[1;8D' nop


eval "$(direnv hook zsh)"

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null


