#! /bin/bash

# install raspbien os to sd card ref:http://www.raspberrypi.org/downloads/
TMP_DIR=`date +%d%m-%Y`_tmp

if [ ! -e $TMP_DIR ]; then
  mkdir $TMP_DIR
else
  echo "$TMP_DIR exists!"
fi

cd $TMP_DIR

# wget http://downloads.raspberrypi.org/raspbian_latest

# sha1sum raspbian_latest # 0171e77f687c447dae32609fcc6aa700c750d6f5

# unzip raspbian_latest

# sudo dd bs=4M if=2015-01-31-raspbian.img of=/dev/sdf

cd ../
rm -rf $TMP_DIR
