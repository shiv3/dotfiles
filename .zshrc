
# zcompile

if [ $DOTFILES/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi

#--------------
# Prompt

PROMPT='%n@%1~%s%(!.#.)> '

#---------------
# 文字コード修正

export LANG=ja_JP.UTF-8

#----------------------------------------------------------------
# Alias

# cd系
alias cdd="cd ~/Desktop"
alias cdo="cd ~/Downloads"
alias cdc="cd ~/ctf"
alias cdg="cd ~/go/src/github.com"
alias cda="cd ~/go/src/github.com/abema"
alias cdm="cd ~/go/src/github.com/abema/mira"
alias cdk="cd ~/go/src/github.com/kakekomu/"
alias cds="cd ~/go/src/github.com/shiv3/"

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

alias stegotools="docker run -it --rm -v $(pwd):/data dominicbreuker/stego-toolkit /bin/bash"
alias ctfbox="docker run --privileged -it --rm -v $(pwd):/home/ctf/ boogy/ctfbox /bin/bash"
alias ctftools="docker run -it --rm -v $(pwd):/home/ctf/questions zardus/ctf-tools /bin/bash"

alias stegotools="docker run -it --rm -v $(pwd)/:/data dominicbreuker/stego-toolkit /bin/bash"

alias kc="kubectl"

alias gitsweep="git branch --merged | grep -vE '^\*|master$|develop$' | xargs -I _ git branch -d _"

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
#eval "$(goenv init -)"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# nvm
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

# n
export N_PREFIX=$HOME/.n
export PATH=$PATH:${N_PREFIX}/bin


# yarn
export PATH="$HOME/.yarn/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/hojo/.npm/_npx/26713/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/hojo/.npm/_npx/26713/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/hojo/.npm/_npx/26713/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/hojo/.npm/_npx/26713/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# gcloud

source /Users/hojo/Downloads/google-cloud-sdk/completion.zsh.inc
source /Users/hojo/Downloads/google-cloud-sdk/path.zsh.inc

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/hojo/.npm/_npx/33440/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/hojo/.npm/_npx/33440/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

## flutter
export PATH=$PATH:/Users/hojo/development/flutter/bin/


## pipenv
eval "$(pipenv --completion)"

export PATH="/usr/local/opt/ncurses/bin:$PATH"

# adb
export PATH=$PATH:/Users/hojo/Library/Android/sdk/platform-tools
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH=$HOME/bin:$PATH


# istio
export PATH=$PATH:$HOME/.istioctl/bin
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)


