## all aliases and functions related to fasd

alias v='f -e vim'
alias j='fasd_cd -d'

# alias eframe='emacsclient --alternate-editor "" --create-frame --no-wait'
alias emacs='emacsclient  --no-wait --socket-name /tmp/emacs1000/server'
alias eframe='emacsclient --create-frame --no-wait --socket-name /tmp/emacs1000/server'

function fasd_emacs_existing_frame(){
  emacs $(fasd -f $@)
}


function fasd_emacs_new_frame(){
  eframe $(fasd -f $@)
}

alias e=fasd_emacs_new_frame
alias ee=fasd_emacs_existing_frame
# alias ef=fasd_emacs_frame
