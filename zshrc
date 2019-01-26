# Path to your oh-my-zsh configuration.
ZSH=$HOME/zsh/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"
# ZSH_THEME="martinus"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tmux="tmux -2" # To assume the console has 256 colors

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode git-extras git_remote_branch gitignore docker adb aws my_alias bgnotify
         bower bundler common-aliases extract gem gitfast gulp heroku httpie jsontools meteor mix
         npm rails rbenv redis-cli rsync tmux tmuxinator vagrant zsh-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/history-substring-search/history-substring-search.zsh

# History substring search plugin binding
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Customize to your needs...
for i in $HOME/zsh/paths-to-add/*; do
    source ${i};
done
export PATH=$PATH:${HOME}/bin:/usr/local/sbin:/usr/local/bin:/sbin

# 256 color support
export TERM=screen-256color

export EDITOR=vim
export VISUAL=vim

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ /usr/bin/kubectl ]; then source <(kubectl completion zsh); fi
