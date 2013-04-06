This is repository of setting files.

vimrc :
$ mv vimrc ~/.vimrc

before command :
$ git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git

edit .bash_profile :
$ vi .bash_profile

下の三行を挿入 
===========================
if [ -f ~/.bashrc ]; then
   . ~/.bashrc
fi
==========================



after command :
Vimを立ち上げて :BundleInstall を実行


