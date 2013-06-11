    zstyle ':completion:*:approximate:'    max-errors 'reply=( $((($#PREFIX+$#SUFFIX)/3 )) numeric )'
    zstyle ':completion:*:complete:-command-::commands' ignored-patterns '(aptitude-*|*\~)'
    zstyle ':completion:*:correct:*'       insert-unambiguous true
    zstyle ':completion:*:corrections'     format $'%{\e[0;31m%}%d (errors: %e)%{\e[0m%}'
    zstyle ':completion:*:correct:*'       original true
    zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}
    zstyle ':completion:*:descriptions'    format $'%{\e[0;31m%}completing %B%d%b%{\e[0m%}'
    # zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
    zstyle ':completion:*:expand:*'        tag-order all-expansions
    zstyle ':completion:*:history-words'   list false
    zstyle ':completion:*:history-words'   menu yes
    zstyle ':completion:*:history-words'   remove-all-dups yes
    zstyle ':completion:*:history-words'   stop yes
    zstyle ':completion:*'                 matcher-list 'm:{a-z}={A-Z}'
    zstyle ':completion:*:matches'         group 'yes'
    zstyle ':completion:*'                 group-name ''
        zstyle ':completion:*'               menu select=5
    zstyle ':completion:*:messages'        format '%d'
    zstyle ':completion:*:options'         auto-description '%d'
    zstyle ':completion:*:options'         description 'yes'
    zstyle ':completion:*:processes'       command 'ps -au$USER'
    zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
    zstyle ':completion:*'                 verbose true
    zstyle ':completion:*:-command-:*:'    verbose false
    zstyle ':completion:*:warnings'        format $'%{\e[0;31m%}No matches for:%{\e[0m%} %d'
    zstyle ':completion:*:*:zcompile:*'    ignored-patterns '(*~|*.zwc)'
    zstyle ':completion:correct:'          prompt 'correct to: %e'
    zstyle ':completion::(^approximate*):*:functions' ignored-patterns '_*'
    zstyle ':completion:*:processes-names' command 'ps c -u ${USER} -o command | uniq'
    zstyle ':completion:*:manuals'    separate-sections true
    zstyle ':completion:*:manuals.*'  insert-sections   true
    zstyle ':completion:*:man:*'      menu yes select
    zstyle ':completion:*:sudo:*' command-path /usr/local/sbin \
    zstyle ':completion:*' special-dirs ..
        zstyle ':completion:*' completer _oldlist _expand _force_rehash _complete _files _ignored
    zstyle ':completion:*:urls' local 'www' '/var/www/' 'public_html'
    [[ -d $ZSHDIR/cache ]] && zstyle ':completion:*' use-cache yes && \
                            zstyle ':completion::complete:*' cache-path $ZSHDIR/cache/
    zstyle ':completion:*:hosts' hosts $hosts
zstyle ':completion:hist-complete:*' completer _history
