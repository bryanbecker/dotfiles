# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/bryan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER="bryan"
POWERLEVEL9K_CUSTOM_LOCK_SYMBOL="zsh_custom_lock"
POWERLEVEL9K_CUSTOM_KEYBOARD_LAYOUT="zsh_get_keyboard_layout"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs vi_mode custom_lock_symbol)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_OK_ICON=$'\u2714'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2  # default 2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"  # truncate_with_package_name, truncate_middle, truncate_from_right, truncate_from_left, (default) none
POWERLEVEL9K_SHORTEN_DELIMITER=""

zsh_custom_lock(){
  if [ ! -w $PWD ] ; then
    printf '%s' $'\uF023'
  fi
}

zsh_get_keyboard_layout(){
  if setxkbmap -query | grep dvorak -q ; then
    printf '%s' 'DV'
  else
    printf '%s' 'US'
  fi
}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( \
         asdf \       # adds integration with asdf
         colored-man-pages \
         cp \         # adds cpv alias that uses rsync
         dirhistory \ # navigate file history with ALT-LEFT and ALT-RIGHT
         emacs \      # emacs start-up functions
         fasd \       # fasd support
         git \        # adds a ton of git aliases
         gitignore \  # adds `gi` alias
         git-flow \   # completion for git flow
         gpg-agent \
         # history-substring-search \ # history search like in fish
         mix \        # completion for mix
         pass \       # completion for pass
         # per-directory-history \ # history completion per directory, ^G to switch to global
         rsync \      # useful rsync aliases
         sudo \       # press ESC twice to add/remove `sudo` from previous command
         systemadmin \ # useful system admin tools
         systemd \
         taskwarrior \ # completion for task warrior
         ubuntu \     # many useful aliases for apt-get
         vagrant \    # vagrant completion
         # vi-mode \
         )

plugins+=(alias-tips)   # reminds you if command is aliased
plugins+=(directory-history)


# change history-substring-search keys
# bind ctrl+k and ctrl+j to substring search
bindkey '^j' history-substring-search-up
bindkey '^k' history-substring-search-down
# bind up/down keys to directory history search
bindkey '^[[A' directory-history-search-backward
bindkey '^[[B' directory-history-search-forward


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# gpg
# export GPGKEY=welp

eval "$(thefuck --alias)"



#Try to fix hiding hidden folders
#compinit
_comp_options+=(globdots)


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# this should fix the errors from GTK, like:
# "couldn't connect to accessibility bus"
export NO_AT_BRIDGE=1
