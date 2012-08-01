#######################################
# .zshrc configuration file
#
# Not yet completed.
# Still needs a global cleanup
#
# Author: João Trindade
# WWW: http://joaotrindade.no-ip.org
# Email: trindade.joao@gmail.com
#######################################
# Heavily inspired in config files found at:
# http://www.jukie.net/~bart/
#
# Many thanks to Bart Trojanowski.
#######################################
# Latest version, always available at:
# http://joaotrindade.no-ip.org/git/gitweb.cgi?p=zsh/.git;a=summary
#######################################

#! /bin/zsh
autoload -U compinit zrecompile # Activatesthe zsh auto-completion

zsh_cache=${HOME}/.zsh_cache
mkdir -p $zsh_cache

if [ $UID -eq 0 ]; then
    compinit
else
    compinit -d $zsh_cache/zcomp-$HOST

    for f in ~/.zshrc $zsh_cache/zcomp-$HOST; do
        zrecompile -p $f && rm -f $f.zwc.old
    done
fi

setopt extended_glob
for zshrc_snipplet in ~/.zsh.d/S[0-9][0-9]*[^~] ; do
    source $zshrc_snipplet
done

fpath=(~/zsh/zsh-completions/src/ $fpath)
