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

# echo add .emacs below
# echo (setq load-path (cons (expand-file-name "~/.emacs.d/auto-install") load-path))
# echo (require 'auto-install)
# echo (setq load-path (cons auto-install-directory load-path))
# echo ;; (auto-install-update-emacswiki-package-name t)

echo "install auto-complete by auto-install"
echo "M-x auto-install-batch"
echo "auto-complete <tab>"

# echo "install yasnippet"
# git clone --recursive https://github.com/capitaomorte/yasnippet
# mv yasnippet ~/.emacs.d/yasnippet

# wget https://elpa.gnu.org/packages/cl-lib-0.5.el
# emacs -batch -f batch-byte-compile cl-lib-0.5.el
# mv cl-lib-0.5.elc ~/.emacs.d/cl-lib.elc

# git clone https://github.com/smitch/yasnippet-snippets
# rm -rf ~/emacs.d/yasnippet/snippets/java-mode
# mv yasnippet-snippets/java-mode ~/.emacs.d/yasnippet/snippets/

# echo "install auto-java-complete"
# git clone https://github.com/emacs-java/auto-java-complete
# cd auto-java-complete
# javac Tags.java
# java -cp "/usr/lib/jvm/java/jre/lib/rt.jar:." Tags
# cd ../
# mv auto-java-complete ~/.emacs.d

echo M-x install-elisp
echo http://tromey.com/elpa/package-install.el

echo M-x package-list-packages
echo find magit, type i and x

echo '(require magit) in .emacs'

echo 'download el files from https://osdn.jp/projects/hatena-diary-el/releases/'
echo 'mv hatena-diary directory to .emacs.d'

cat <<EOF
add below to .emacs

(add-to-list 'load-path "~/.emacs.d/hatena-diary")
(require 'hatena-diary-mode)
(setq hatena-usrid "<hatena user id>")
(setq hatena-twitter-flag t)
EOF

echo flymake config
cat <<EOF
;; flymake
(require 'flymake)
(add-to-list 'flymake-allowed-file-name-masks '("\\.java$" my-java-flymake-init flymake-simple-cleanup))
(add-hook 'java-mode-hook 'flymake-mode-on)
EOF

# UNCOMMENT TO DELETE TMP DIR
# cd ../
# rm -rf $TMP_DIR

