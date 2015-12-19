#! /bin/bash

# ref: http://www.mk-mode.com/octopress/2012/09/15/15002016/

TMP_DIR=tmp-`date +%m%d-%Y`
if [ ! -e $TMP_DIR ]; then
  mkdir $TMP_DIR
else
  echo "TMP_DIR exists"
fi

cd $TMP_DIR
# wget  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
# tar -xzvf install-tl-unx.tar.gz
# cd install-tl-20150210
# sudo ./install-tl

# sudo yum install xorg-x11-xauth

# sudo emacs /etc/ssh/sshd_config
# set
# X11Forwarding yes
# X11DisplayOffset 10
# X11UseLocalhost yes

# sudo service sshd restart

# echo 'PATH=$PATH:/usr/local/texlive/2014/bin/x86_64-linux' >> ~/.zshrc

# YaTeX setting
# wget https://www.yatex.org/yatex1.78.4.tar.gz
# tar xzf yatex1.78.4.tar.gz
cd yatex1.78.4
# make elc
# sudo make install

# edit .emacs
# (setq load-path (cons (expand-file-name "/usr/share/emacs/site-lisp/yatex") load-path))
# (setq auto-mode-alist
#       (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
# (autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

cd ~/hoge/works
rm -r $TMP_DIR
