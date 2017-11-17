source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "plugins/git", from:oh-my-zsh
zplug "djui/alias-tips"
zplug "plugins/vi-mode", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

CLICOLOR=1

# system custom
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

ZSH_THEME="robbyrussell"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
plugins=(git)

# Path to your oh-my-zsh installation.
export ZSH=/Users/Timon/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

zplug load

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=10
ZSH_AUTOSUGGEST_USE_ASYNC=1
bindkey '^_' autosuggest-execute

# Aliases file
. ~/.aliases

# Functions file
. ~/.functions

export PATH="/usr/local/php5/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.composer/vendor/bin:/opt/local/bin:/opt/X11/bin"
export PATH=~/.composer/vendor/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" # Add RVM to PATH for scripting
export TERM=xterm-256color-italic

