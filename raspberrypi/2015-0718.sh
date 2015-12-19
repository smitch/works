#! /bin/bash

# contents: install bluetooth packages

#TMP_DIR=tmp-0718-2015-raspberrypi
#if [ ! -e $TMP_DIR ]; then
#  mkdir $TMP_DIR
#fi

sudo apt-get install bluetooth bluez-utils blueman
hcitool scan
sudo bluez-simple-agent hci0 <BD address>
sudo bluez-test-device trusted <BD address> yes
sudo bluez-test-input connect <BD address>

#cd $TMP_DIR
# rm -rf $TMP_DIR

