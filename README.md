# dotvim
`dotvim` contains some cool plugins for day to day Linux stuff

# features
* fzf - files search and more
https://github.com/junegunn/fzf

* vim-multiple-cursors - cool ways of editing files with multiple cursors
https://github.com/terryma/vim-multiple-cursors

* vim-surround - manipuldate parentheses, brackets, quotes, XML tags, and more with simple key binds
https://github.com/tpope/vim-surround

* emmet-vim -emmet commads for generating html tag
https://github.com/mattn/emmet-vim

* vim-gitgutter - shows you lines you have added updated in current file in the git repo
https://github.com/airblade/vim-gitgutter

* scrooloose/nerdtree - file browser
https://github.com/scrooloose/nerdtree

* lightline.vim - cool bottom bar for better visibility of more details about the mode and file
https://github.com/itchyny/lightline.vim

* minimalist - color scheme
https://github.com/dikiaap/minimalist

## preconditions
run
```
# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## clone the project
```
git clone https://github.com/s1n7ax/dotvim.git ~/dotvim
```

## place the vimrc
```
cd ~/dotvim
cp $HOME/dotvim/vimrc ~/.vimrc
```

## install vim plugins
run
```
# open vim or nvim
vim

# install vim plug plugins
:PlugInstall

# install vundle plugins
:PluginInstall
```

restart vim

## enjoy~!
