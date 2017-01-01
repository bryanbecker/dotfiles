## all aliases and functions related to fasd

alias v='f -e vim'
alias j='fasd_cd -d'


function fasd_emacs(){
  emacs $(fasd -f $@)
}

alias eframe='emacsclient --alternate-editor "" --create-frame --no-wait'

function fasd_emacs_frame(){
  eframe $(fasd -f $@) --no-wait
}

alias e=fasd_emacs
alias ef=fasd_emacs_frame
