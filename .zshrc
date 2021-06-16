source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "plugins/git", from:oh-my-zsh
zplug "themes/robbyrussell", from:oh-my-zsh, as:theme
zplug "djui/alias-tips"

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

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"

zplug load

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=10
ZSH_AUTOSUGGEST_USE_ASYNC=1
bindkey '^_' autosuggest-execute

# Aliases file
. ~/.aliases

# Functions file
. ~/.functions

setopt extended_history
setopt append_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt share_history
setopt pushd_ignore_dups
setopt interactivecomments
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

export PATH="/usr/local/php5/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.composer/vendor/bin:/opt/local/bin:/opt/X11/bin"
export PATH=~/.composer/vendor/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" # Add RVM to PATH for scripting
# export TERM=xterm-256color-italic

export PATH=/Users/Timon/.local/bin/luna-studio:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

export GOPATH="$HOME/go"

export PATH="$PATH:$GOPATH/bin"

PROMPT='${ret_status} %{$fg[white]%}%c%{$reset_color%} $(git_prompt_info)'

# added by travis gem
[ -f /Users/Timon/.travis/travis.sh ] && source /Users/Timon/.travis/travis.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/Users/Timon/.deno/bin:$PATH"

export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"
