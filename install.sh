# ハードリンクの作成
ln ~/dotfiles/.vimrc ~/.vimrc
ln ~/dotfiles/.gvimrc ~/.gvimrc
ln ~/dotfiles/.vim ~/.vim

ln ~/dotfiles/.zshrc ~/.zshrc
ln ~/dotfiles/.bashrc ~/.bashrc
ln ~/dotfiles/.tmux.conf ~/.tmux.conf

source ~/.bashrc
source ~/.zshrc

## vim 
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

## git
sudo ln -s /usr/local/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight


/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle
brew bundle

npm install yarn -g