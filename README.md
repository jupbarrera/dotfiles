dotfiles
======

My dotfiles configuration

installation:

    $ git clone git://github.com/jupbarrera/dotfiles.git

Create symlinks:
   
    $ ln -s ~/dotfiles/.vim ~/.vim
    $ ln -s ~/dotfiles/vimrc ~/.vimrc
    $ ln -s ~/dotfiles/bashrc ~/.bashrc
    $ ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
    $ ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

install robbyrussell’s oh-my-zsh for zsh (http://github.com/robbyrussell)

    $ ln -s ~/dotfiles/zshrc ~/.zshrc

Remember to install Vundle first

    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Inside vim

:BundleInstall

In order to make solarized colors to play well with vim 

    $ git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
    $ cd gnome-terminal-colors-solarized
    $ ./install.sh

Remember to create a new terminal session before executing install.sh

