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


