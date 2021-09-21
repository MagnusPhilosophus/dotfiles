PS1='%F{#ff99ac}[%n@%m %/]$%f'

HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
export KEYTIMEOUT=1
bindkey '^j' vi-cmd-mode
bindkey -M vicmd "h" vi-backward-char
bindkey -M vicmd "H" vi-beginning-of-line
bindkey -M vicmd "s" vi-forward-char
bindkey -M vicmd "S" end-of-line

# Basic auto/tab complete:
autoload -U compinit
compinit

#Aliases
alias v="nvim"
alias r="rm"
alias rm="rm -r"
alias l='ls --color=auto'
alias la='ls -a --color=auto'
alias cb='cargo build'
alias cr='cargo run'
alias zb='zig build'
alias zr='zig run'
#git
alias ga='git add'
alias gap='git add --patch'
alias gb='git branch --all'
alias gc='git commit'
alias gca='git commit --amend'
alias gcl='git clone --recursive'
alias gcn='git commit --no-verify'
alias gco='git checkout'
alias gcop='git checkout --patch'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gl='git log --graph --oneline'
alias gp='git push'
alias gpl='git pull'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gs='git status'
alias gsh='git stash'
#Make
alias maek='make'
alias meak='make'
alias meka='make'
alias mkea='make'
alias mkae='make'
ex (){
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
export PATH=$PATH:/usr/local/zig
export EDITOR=nvim
