#! /bin/bash

# contents: install hatena-mode to emacs
#           ref http://hatena-diary-el.osdn.jp/
#
#           install auto-complete-mode


TMP_DIR=tmp-1101-2015-kiritsubo
if [ ! -e $TMP_DIR ]; then
 mkdir $TMP_DIR
fi
cd $TMP_DIR

echo 'download el files from https://osdn.jp/projects/hatena-diary-el/releases/'
echo 'mv hatena-diary directory to .emacs.d'

cat <<EOF
add below to .emacs

(add-to-list 'load-path "~/.emacs.d/hatena-diary")
(require 'hatena-diary-mode)
(setq hatena-usrid "<hatena user id>")
(setq hatena-twitter-flag t)
EOF

# wget https://elpa.gnu.org/packages/cl-lib-0.5.el
# emacs -batch -f batch-byte-compile cl-lib-0.5.el
# mv cl-lib-0.5.elc ~/.emacs.d/cl-lib.elc

echo "install auto-complete by auto-install"
echo "M-x auto-install-batch"
echo "select auto-comlete"

echo "install yasnippet"
git clone --recursive https://github.com/capitaomorte/yasnippet
mv yasnippet ~/.emacs.d/yasnippet

# echo "install yasnippet-config by auto-install"

echo "install auto-java-complete"
git clone https://github.com/emacs-java/auto-java-complete
javac Tags.java
java -cp "/usr/java/packages/lib/amd64:/usr/lib64:/lib64:/lib:/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.25-3.b17.el6_6.x86_64:." Tags

echo "install java-snippet"
git clone https://github.com/nekop/yasnippet-java-mode.git
mkdir ~/.emacs.d/snippets/
mv yasnippet-java-mode/snippets/java-mode ~/.emacs.d/snippets/

# cd ../
# rm -rf $TMP_DIR
