if [[ -z "${BREW_PREFIX}" ]]; then
  BREW_PREFIX="$(brew --prefix)"
fi

# Setup fzf
# ---------
if [[ ! "$PATH" == *${BREW_PREFIX}/opt/fzf/bin* ]]; then
  export PATH="$PATH:${BREW_PREFIX}/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${BREW_PREFIX}/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "${BREW_PREFIX}/opt/fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_OPTS="--height=15"
