source ~/.bash_profile
#visual studio code
code () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -s "/Users/hojo/.dnx/dnvm/dnvm.sh" ] && . "/Users/hojo/.dnx/dnvm/dnvm.sh" # Load dnvm


alias ssh-peco='ssh -A $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
alias sspeco="ssh-peco"
alias ecupdate="ec2ssh update"
alias pastimghunho="echo memo: \`psterpng\` | hunho"
alias intellij="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea &"
alias bandle=bandler
