# zcompile

if [ $DOTFILES/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi

#---------------
# 文字コード修正

export LANG=ja_JP.UTF-8

#----------------------------------------------------------------
# Alias

# cd系
alias cdd="cd ~/Desktop"
alias cdo="cd ~/Downloads"

alias cdm="cd ~/Desktop/develop/src/git.corp.yahoo.co.jp/msc-app-biz/"
alias cdp="cd ~/Desktop/develop/src/partner.git.corp.yahoo.co.jp/ymi"
alias cdg="cd ~/Desktop/develop/src/go.corp.yahoo.co.jp/"
alias cdh="cd ~/Desktop/develop/src/ghe.corp.yahoo.co.jp/"

# ls系
alias l="ls"
alias ll="ls -la"

# 他
alias git=hub
alias py=python
alias sruby="ruby -run -e httpd . "

alias atom="open -a /Applications/Atom.app/ "

alias ssh-peco='ssh -A $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
alias sspeco="ssh-peco"
alias ecupdate="ec2ssh update"

alias pasterpng="pngpaste /tmp/paste.png  && cat /tmp/paste.png | goster -r"

alias intellij="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea &"
alias bandle=bandler

#-------------
# rmコマンドをゴミ箱移動へ変更

alias rm=rmtrash

#-----
#from secret

# source ~/.env

#-----------------------------------------------------------------
# env path

# my bin

export PATH=$PATH:~/dotfiles/bin/

# goenv
export GOENV_ROOT=$HOME/.goenv
export PATH="$HOME/.goenv/shims:$PATH"
eval "$(goenv init -)"

# go
export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# yarn
export PATH="$HOME/.yarn/bin:$PATH"
