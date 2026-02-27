# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
#
# Note: Instant prompt requires Zsh >= 5.4
#   which zsh && zsh --version
# Display current shell:
#   dscl . -read /Users/$USER UserShell
# Switch to Homebrew zsh
#   sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
# Verify "which zsh" now displays "/usr/local/bin/zsh"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# Brew completion
# https://docs.brew.sh/Shell-Completion
# This must be done before oh-my-zsh loads
FPATH="$(brew --prefix)/share/zsh/site-functions:$FPATH"

export LANG=en_US.UTF-8

# Load compinit before p10k
autoload -Uz compinit
compinit

source ${HOME}/.zshrc.pekevaara
source ${HOME}/.zshrc.private

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

fpath=(${HOME}/.docker/completions $fpath)

# SCM Breeze
# https://github.com/ndbroadbent/scm_breeze
[ -s "${HOME}/.scm_breeze/scm_breeze.sh" ] && source "${HOME}/.scm_breeze/scm_breeze.sh"

# brew install zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# brew install autojump
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# brew install direnv
# eval "$(direnv hook zsh)" >/dev/null
