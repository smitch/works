#! /bin/bash

# contents: postfix setup -> not finished

TMP_DIR=tmp-0403-2015-kiritsubo
if [ ! -e $TMP_DIR ]; then
  mkdir $TMP_DIR
fi
cd $TMP_DIR

# sudo yum install postfix
# sudo service postfix start

# echo edit/etc/postfix/main.cf
# inet_interfaces = $myhostname, localhost

# rm -rf $TMP_DIR

