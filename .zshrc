# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

#
#####my config#####
#
zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
zinit ice lucid wait='1'
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet OMZ::lib/history.zsh
#zinit ice lucid wait='0'
#zinit snippet OMZ::plugins/dirhistory/dirhistory.plugin.zsh
#zinit snippet OMZ::lib/key-bindings.zsh
zinit ice lucid wait='0'
zinit light zsh-users/zsh-completions
#zinit snippet OMZ::lib/completion.zsh
: ${THEME:=p10k}

case $THEME in
    pure)
	PROMPT=$'\n%F{cyan}❯ %f'
	RPROMPT=""
	zstyle ':prompt:pure:prompt:success' color cyan
	zinit ice lucid wait="!0" pick="async.zsh" src="pure.zsh" atload="prompt_pure_precmd"
	zinit light Aloxaf/pure
	;;
    p10k)
	[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
	zinit ice depth=1
	zinit light romkatv/powerlevel10k
	;;
esac
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	##alias vdir='vdir --color=auto'
	
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


##options
setopt  autocd autopushd pushdignoredups 
KEYTIMEOUT=1

## some aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias f='neofetch'
alias vi='nvim'
alias ta='tmux attach'
alias gitdotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias d='dirs -v | head -10'
alias 1='cd ~1'
alias 2='cd ~2'
alias 3='cd ~3'
alias 4='cd ~4'
alias 5='cd ~5'
alias 6='cd ~6'
alias 7='cd ~7'
alias 8='cd ~8'
alias 9='cd ~9'

##vi-mode
bindkey -v
bindkey -M vicmd "a" vi-add-next
bindkey -M vicmd "A" vi-add-eol
bindkey -M vicmd "e" vi-insert
bindkey -M vicmd "E" vi-insert-bol
bindkey -M vicmd "h" vi-forward-word-end
bindkey -M vicmd "H" vi-forward-blank-word-end
bindkey -M vicmd "k" down-line-or-history
bindkey -M vicmd "i" up-line-or-history
bindkey -M vicmd "j" vi-backward-char
###############################change cursor in vimode
#function zle-keymap-select {
	#if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		#echo -ne '\e[1 q'
	#elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		#echo -ne '\e[5 q'
  #fi
#}
#zle -N zle-keymap-select
###############################
# Use beam shape cursor on startup.
echo -ne '\e[1 q'
echo -ne "\033]12;#ffb86c\007"


##export
export EDITOR=nvim
export TERM="tmux-256color"
export PATH=~/.local/bin:"$PATH"
#export PATH=~/Code/zephyrproject/zephyr:"$PATH"
#export ZEPHYR_BASE=~/Code/zephyrproject/zephyr


source localconfig.zsh
