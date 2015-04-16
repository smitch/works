#! /bin/bash

# contents: cron conf to exec recfs every wake up
#           not worked for desire
#           daemonize is needed

# sudo crontab -e
# add line below
# @reboot /home/kouichi/tv/bin/recfsusb2n -b --http 8888


# TMP_DIR=tmp-0416-2015-akashi
# if [ ! -e $TMP_DIR ]; then
#   mkdir $TMP_DIR
# fi
# cd $TMP_DIR
# rm -rf $TMP_DIR
