PROMPT='%F{16}%n@%m%f %F{blue}%1~%f %# '

unsetopt BEEP
unsetopt PROMPTSP
setopt HISTIGNOREALLDUPS SHAREHISTORY

export LS_COLORS="" # TODO: Fix

# brew autocomplete
if type brew &> /dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

export HOMEBREW_NO_ENV_HINTS=1

autoload -Uz compinit select-word-style
compinit
select-word-style bash # NOTE: Affects Alt-Backspace

# Completion styles
zstyle ':completion:*' completer _expand _extensions _complete _correct _approximate
zstyle ':completion:*:default' list-colors ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' complete-options true

# opam configuration
[[ ! -r /Users/jongheon/.opam/opam-init/init.zsh ]] || source /Users/jongheon/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS=" \
--info=inline-right \
--color=\
fg+:-1,\
bg+:-1,\
gutter:-1,\
hl+:green,\
info:-1,\
border:-1,\
separator:-1,\
prompt:16,\
pointer:16,\
marker:16,\
spinner:17,\
header:gray"

# ripgrep
export RIPGREP_CONFIG_PATH="$HOME/.config/rg/ripgreprc"

if type nvim &> /dev/null; then
  export EDITOR=nvim
  export MANPAGER='nvim +Man!'
fi

source "$HOME/.cargo/env"
