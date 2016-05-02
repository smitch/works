#! /bin/bash

# contents: install emacs packages

# TMP_DIR=tmp-2016-0502
# if [ ! -e $TMP_DIR ]; then
#  mkdir $TMP_DIR
# fi
# cd $TMP_DIR

# WRITE SCRIPT HERE
emacs_dir=~/.emacs.d

if [ ! -e ${emacs_dir}/auto-install ]; then
  mkdir -p ${emacs_dir}/auto-install
fi

# cd ${emacs_dir}/auto-install
# wget 'http://www.emacswiki.org/emacs/download/auto-install.el'
# emacs --batch -Q -f batch-byte-compile auto-install.el

echo add .emacs below
echo (setq load-path (cons (expand-file-name "~/.emacs.d/auto-install") load-path))
echo (require 'auto-install)
echo (setq load-path (cons auto-install-directory load-path))
echo ;; (auto-install-update-emacswiki-package-name t)


# UNCOMMENT TO DELETE TMP DIR
# cd ../
# rm -rf $TMP_DIR

