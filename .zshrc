# =========================== oh-my-zsh ==============================

export EDITOR='nvim'

# =========================== oh-my-zsh ==============================
#
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git node rust volta npm history history-substring-search yarn docker)
source $ZSH/oh-my-zsh.sh

# =========================== PATH ==============================

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Pnpm
export PNPM_HOME=~/Library/pnpm
export PATH="$PNPM_HOME:$PATH"

# go
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin

# llvm
export PATH="$PATH:$(brew --prefix)/opt/llvm/bin"

# Nvim
export PATH="/Users/sp/nvim-macos-arm64/bin:$PATH"

# Pipx
export PATH="$PATH:/Users/sp/.local/bin"

# Google Cloud SDK.
if [ -f '/Users/sp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sp/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/sp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sp/google-cloud-sdk/completion.zsh.inc'; fi

# =========================== ZSH ==============================

# Zsh extra plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none



# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Startship prompts
eval "$(starship init zsh)"

# The fuck
eval $(thefuck --alias)

# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/sp/.zsh/completions:"* ]]; then export FPATH="/Users/sp/.zsh/completions:$FPATH"; fi
. "/Users/sp/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit

# =========================== ALIAS ==============================

alias lg='lazygit'
alias pip="pip3"
 alias python="python3"
alias st='tmux source-file ~/.config/tmux/tmux.conf'
alias sz="source ~/.zshrc"
alias tf='terraform'
alias vi="/usr/bin/vim"
alias vim="nvim"
alias vz="vim ~/.zshrc"

# =========================== Other ==============================

# When launching new kitty term intance,
# try to attach to a tmux session, else create a new one
if [ -z "$TMUX" ] && [ "$TERM" = "xterm-kitty" ]; then
  tmux attach || exec tmux new-session -s tmux;
fi
