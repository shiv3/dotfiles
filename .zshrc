# zsh settings
source ~/.zplug/init.zsh

# Make sure to use double quotes
zplug "zsh-users/zsh-history-substring-search"

# Use the package as a command
# And accept glob patterns (e.g., brace, wildcard, ...)
zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"

# Can manage everything e.g., other person's zshrc
zplug "tcnksm/docker-alias", use:zshrc

# Disable updates using the "frozen" tag
zplug "k4rthik/git-cal", as:command, frozen:1

# Grab binaries from GitHub Releases
# and rename with the "rename-to:" tag
zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

# Supports oh-my-zsh plugins and the like
zplug "plugins/git",   from:oh-my-zsh

# Also prezto
zplug "modules/prompt", from:prezto

# Load if "if" tag returns true
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

# Run a command after a plugin is installed/updated
# Provided, it requires to set the variable like the following:
# ZPLUG_SUDO_PASSWORD="********"
zplug "jhawthorn/fzy", \
    as:command, \
    rename-to:fzy, \
    hook-build:"make && sudo make install"

# Supports checking out a specific branch/tag/commit
zplug "b4b4r07/enhancd", at:v1
zplug "mollifier/anyframe", at:4c23cb60

# Can manage gist file just like other packages
zplug "b4b4r07/79ee61f7c140c63d2786", \
    from:gist, \
    as:command, \
    use:get_last_pane_path.sh

# Support bitbucket
zplug "b4b4r07/hello_bitbucket", \
    from:bitbucket, \
    as:command, \
    use:"*.sh"

# Rename a command with the string captured with `use` tag
zplug "b4b4r07/httpstat", \
    as:command, \
    use:'(*).sh', \
    rename-to:'$1'

# Group dependencies
# Load "emoji-cli" if "jq" is installed in this example
zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq
zplug "b4b4r07/emoji-cli", \
    on:"stedolan/jq"
# Note: To specify the order in which packages should be loaded, use the defer
#       tag described in the next section

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Can manage local plugins
zplug "~/.zsh", from:local

# Load theme file
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug "nojhan/liquidprompt", from:github


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load 

#----------------------------------------------------------------

# Alias

alias cdd="cd ~/Desktop"
alias l="ls"
alias ll="ls -la"
alias git=hub
alias py=python
alias atom="open -a /Applications/Atom.app/ "
alias weth="finger tokyo@graph.no"
alias sruby="ruby -run -e httpd . "



#-----------------------------------------------------------------

# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

#from secret
source ~/.env

#$PATH=/Users/tshibaza/.gem/ruby/2.0.0/
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#PATH="`ruby -e 'puts Gem.user_dir'`/bin:$PATH"
export PATH=$GOPATH/bin:$PATH
export GOPATH=$HOME/Desktop/develop

export HUNHOROOM=tshiba_hunho
export PATH="$HOME/.yarn/bin:$PATH"

alias ssh-peco='ssh -A $(grep -iE "^host[[:space:]]+[^*]" ~/.ssh/config|peco|awk "{print \$2}")'
alias sspeco="ssh-peco"
alias ecupdate="ec2ssh update"
alias pasterpng="pngpaste /tmp/paste.png  && cat /tmp/paste.png | goster -r"
alias pastimghunho="echo memo: \`psterpng\` | hunho"
alias intellij="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea &"
alias bandle=bandler
alias cdm="cd ~/Desktop/develop/src/git.corp.yahoo.co.jp/msc-app-biz/"

