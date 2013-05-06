# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jupbarrera"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git debian gem github svn history-substring-search)

[ -z "$TMUX" ] && export TERM=xterm-256color

export EDITOR="vim"
bindkey -v 

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward  

source $ZSH/oh-my-zsh.sh

# Alias for rake to work correctly
alias rake='noglob rake'

PATH=$PATH:/usr/local/MATLAB/R2011b/bin # Add matlab to path
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/java/lib/i386/client # add java home
PATH=$PATH:$HOME/bin/arduino-1.0.2 # arduino home
PATH=$PATH:$HOME/bin/fritzing-0.7.1b #fritzing home

#Set PATH!!
export PATH=${PATH}:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

PYTHONPATH=$PYTHONPATH:$HOME/pro/python/pynaoqi/ #NAO python path 

#set PYTHONPATH
export PYTHONPATH=${PYTHONPATH}

# universal tarball extractor
extr () {
    if [ -f $1 ] ; then
          case $1 in
              *.tar.bz2)   tar xjf $1     ;;
              *.tar.gz)    tar xzf $1     ;;
              *.bz2)       bunzip2 $1     ;;
              *.rar)       rar x $1       ;;
              *.gz)        gunzip $1      ;;
              *.tar)       tar xf $1      ;;
              *.tbz2)      tar xjf $1     ;;
              *.tgz)       tar xzf $1     ;;
              *.zip)       unzip $1       ;;
              *.Z)         uncompress $1  ;;
              *.7z)        7z x $1        ;;
              *)           echo "'$1' cannot be extracted via extr()" ;;                   
          esac
          else
         echo "'$1' is not a valid file"
   fi
}

