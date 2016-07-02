bindkey -M viins 'jk' vi-cmd-mode

bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

bindkey -v "^A" beginning-of-line
bindkey -v "^E" end-of-line
bindkey -v "^K" kill-line
bindkey -v "^L" clear-screen
bindkey -v "^R" history-incremental-search-backward
bindkey -v "^U" kill-whole-line
bindkey -v "^V" quoted-insert
bindkey -v "^W" backward-kill-word

bindkey -v "^[[3~" delete-char
bindkey -v "^[[5~" backward-word
bindkey -v "^[[6~" forward-word
