## all aliases and functions related to fasd

alias v='f -e vim'
alias j='fasd_cd -d'


function fasd_emacs(){
  emacs $(fasd -f $@)
}

alias e=fasd_emacs
