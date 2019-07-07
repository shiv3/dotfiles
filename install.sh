# ハードリンクの作成
ln ~/dotfiles/.vimrc ~/.vimrc
ln ~/dotfiles/.gvimrc ~/.gvimrc
ln ~/dotfiles/.vim ~/.vim
ln ~/dotfiles/.gitconfig ~/.gitconfig

ln ~/dotfiles/.zshrc ~/.zshrc
ln ~/dotfiles/.bashrc ~/.bashrc
ln ~/dotfiles/.tmux.conf ~/.tmux.conf

ln ~/dotfiles/Brewfile ~/.Brewfile

source ~/.bashrc
source ~/.zshrc

## vim 
# mkdir -p ~/.vim/bundle
# git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

## git
sudo ln -s /usr/local/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight


/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle
brew bundle --global

## nvm
mkdir ~/.nvm

## yarn
npm install yarn -g



# 以下オプショナル

## ruby
# 最新rubyインストール
rbenv install --list | grep -e "^ *[0-9]\.[0-9]\.[0-9]\{0,2\}$" | sort -V | tail -n 1 | xargs rbenv install
# global を最新rubyに設定
rbenv versions | tail -n 1 | xargs rbenv global

## python
# 最新python3系のインストール
CFLAGS="-I$(brew --prefix readline)/include -I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include" \
LDFLAGS="-L$(brew --prefix readline)/lib -L$(brew --prefix openssl)/lib" \
PYTHON_CONFIGURE_OPTS=--enable-unicode=ucs2
pyenv install --list | grep -E "^ *3.*" | grep -v "dev" |  tail -n 1 | xargs pyenv install
# global を最新python3に設定
pyenv versions | tail -n 1 | xargs pyenv global

## rust
curl https://sh.rustup.rs -sSf | sh

source $HOME/.cargo/env
