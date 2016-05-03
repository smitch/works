#! /bin/bash

# contents: installed emacs-w3m

# TMP_DIR=tmp-2016-0503
# if [ ! -e $TMP_DIR ]; then
#  mkdir $TMP_DIR
# fi
# cd $TMP_DIR

# WRITE SCRIPT HERE


wget 'http://emacs-w3m.namazu.org/emacs-w3m-1.4.4.tar.gz'
tar -xvzf emacs-w3m-1.4.4.tar.gz

cvs -d :pserver:anonymous@cvs.namazu.org:/storage/cvsroot login
cvs -d :pserver:anonymous@cvs.namazu.org:/storage/cvsroot co emacs-w3m

cp -r emacs-w3m-1.4.4 emacs-w3m-cvs
cp emacs-w3m/* emacs-w3m-cvs
cd emacs-w3m-cvs

# echo add .emacs below
# echo (add-to-list 'load-path "~/.emacs.d/w3m")
# echo (require 'w3m-load)

# ./configure --with-lispdir="/home/<user>/.emacs.d/w3m"
# make
# make install


# UNCOMMENT TO DELETE TMP DIR
# cd ../
# rm -rf $TMP_DIR

