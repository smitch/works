#! /bin/bash

# contents: install postfix and dovecot. send mail when logging in via ssh
# ref: http://vps-tora.com/tsubo/serversman/postfix/
#      http://think-t.hatenablog.com/entry/20120930/p1
#      http://blog.livedoor.jp/alpha1280/archives/51465825.html
#      https://bacchi.me/linux/ssh-login-alert/

# TMP_DIR=tmp-2016-0806
# if [ ! -e $TMP_DIR ]; then
#  mkdir $TMP_DIR
# fi
# cd $TMP_DIR

# WRITE SCRIPT HERE
sudo yum -y install postfix

echo edit files according to ref site

sudo yum -y install dovecot

echo iptables open port 25

echo make /etc/ssh/sshrc file
echo echo "\"$USER\" has logged in from $SSH_CLIENT at `date +"%Y/%m/%d %p %I:%M:%S"` " | mail -s "bacchi.me sshd login alert" -r <from_address> <to_address>


# UNCOMMENT TO DELETE TMP DIR
# cd ../
# rm -rf $TMP_DIR

