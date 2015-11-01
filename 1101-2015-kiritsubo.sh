#! /bin/bash

# contents: install hatena-mode to emacs
#           ref http://hatena-diary-el.osdn.jp/

# TMP_DIR=tmp-1101-2015-kiritsubo
# if [ ! -e $TMP_DIR ]; then
#  mkdir $TMP_DIR
# fi
# cd $TMP_DIR

echo 'download el files from https://osdn.jp/projects/hatena-diary-el/releases/'
echo 'mv hatena-diary directory to .emacs.d'

cat <<EOF
add below to .emacs

(add-to-list 'load-path "~/.emacs.d/hatena-diary")
(require 'hatena-diary-mode)
(setq hatena-usrid "<hatena user id>")
(setq hatena-twitter-flag t)
EOF

# cd ../
# rm -rf $TMP_DIR
