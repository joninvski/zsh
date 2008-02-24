# Lines configured by zsh-newuser-install
# HISTFILE=~/.histfile
# HISTSIZE=1000
# SAVEHIST=1000
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/joao.trindade/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall

# keymap

# bindkey -v
# bindkey "^?"    backward-delete-char
# bindkey "^H"    backward-delete-char
# bindkey "^[[3~" delete-char
# bindkey "^[[1~" beginning-of-line
# bindkey "^[[4~" end-of-line

# HISTFILE=$HOME/.zsh-history
# HISTSIZE=100000
# SAVEHIST=100000
# setopt extended_history
# setopt share_history
# function history-all { history -E 1 }

# #COLOR

# local GRAY=$'%{\e[1;30m%}'
# local LIGHT_GRAY=$'%{\e[0;37m%}'
# local WHITE=$'%{\e[1;37m%}'
# local LIGHT_BLUE=$'%{\e[1;36m%}'
# local YELLOW=$'%{\e[1;33m%}'
# local PURPLE=$'%{\e[1;35m%}'
# local GREEN=$'%{\e[1;32m%}'
# local BLUE=$'%{\e[1;34m%}'

# PROMPT=$GREEN'${USER}'$LIGHT_GRAY'@'$GREEN'${HOST}'$BLUE'%(!.#.$) '$WHITE
# RPROMPT=$BLUE'[%~]'$WHITE

abbreviation
# typeset -A myabbrev
# myabbrev=(
# "lg"    "| grep"
# )


# my-expand-abbrev() {
#     local left prefix
#     left=$(echo -nE "$LBUFFER" | sed -e "s/[_a-zA-Z0-9]*$//")
#     prefix=$(echo -nE "$LBUFFER" | sed -e "s/.*[^_a-zA-Z0-9]\([_a-zA-Z0-9]*\)$/\1/")
#     LBUFFER=$left${myabbrev[$prefix]:-$prefix}" "
# }
# zle -N my-expand-abbrev
# bindkey     " "         my-expand-abbrev

# alias ls='ls -F --color=auto'
# alias ll='ls -la --color=auto'
# alias la='ls -a --color=auto'
# alias eng='LANG=C LANGUAGE=C LC_ALL=C'
# alias -g lG='| grep '
# alias gd='dirs -v; echo -n "select number: "; read newdir; cd -"$newdir"'

# alias cp='cp -i'
# alias mv='mv -i'
# alias rm='rm -i'

# setopt PROMPT_SUBST
# setopt share_history
# setopt autopushd

# autoload -U compinit
# compinit

#! /bin/zsh
autoload -U compinit zrecompile
zsh_cache=${HOME}/.zsh_cache
mkdir -p $zsh_cache

if [ $UID -eq 0 ]; then
compinit
       else
           compinit -d $zsh_cache/zcomp-$HOST
           # #
           for f in ~/.zshrc $zsh_cache/zcomp-$HOST; do
               zrecompile -p $f && rm -f $f.zwc.old
           done
       fi
       #
       setopt extended_glob
       for zshrc_snipplet in ~/.zsh.d/S[0-9][0-9]*[^~] ; do
           source $zshrc_snipplet
       done
