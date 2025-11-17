# Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Aliases
alias l='ls -lah'
alias python='python3'
alias google='web_search google'
alias bing='web_search bing'
alias update='brew update && brew upgrade && brew cleanup && brew doctor'

# PATH and build flags
export PATH="/Library/TeX/texbin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

# Ensure OMZ plugins are present (auto-install if missing)
ZSH_CUSTOM_DIR="${ZSH_CUSTOM:-$ZSH/custom}"
mkdir -p "$ZSH_CUSTOM_DIR/plugins"
if [ ! -d "$ZSH_CUSTOM_DIR/plugins/zsh-autosuggestions" ]; then
  command -v git >/dev/null 2>&1 && git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM_DIR/plugins/zsh-autosuggestions" >/dev/null 2>&1
fi
if [ ! -d "$ZSH_CUSTOM_DIR/plugins/zsh-syntax-highlighting" ]; then
  command -v git >/dev/null 2>&1 && git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM_DIR/plugins/zsh-syntax-highlighting" >/dev/null 2>&1
fi

# Let Oh My Posh handle the prompt
ZSH_THEME=""

# Plugins (syntax highlighting must be last)
plugins=(git arduino-cli web-search zsh-autosuggestions zsh-syntax-highlighting)

# Initialize Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Initialize Oh My Posh after OMZ
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config "$HOME/.config/oh-my-posh/terminal.omp.json")"
fi
export EDITOR=nvim
