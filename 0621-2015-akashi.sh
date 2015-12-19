#! /bin/bash

# ref: http://askubuntu.com/questions/449571/dependency-is-not-satisfiable-libtiff4-when-trying-to-install-lightworks-on-ubu
#      http://cweb.canon.jp/cgi-bin/download/select-software.cgi
# contents: install MG6230 printer driver

TMP_DIR=tmp-0621-2015-akashi
if [ ! -e $TMP_DIR ]; then
 mkdir $TMP_DIR
fi

cd $TMP_DIR


# Down load libtiff4_3.9.7-2ubuntu1_amd64.deb from below
# http://askubuntu.com/questions/449571/dependency-is-not-satisfiable-libtiff4-when-trying-to-install-lightworks-on-ubu
# sudo dpkg -i ./libtiff4_3.9.7-2ubuntu1_amd64.deb

# wget 'http://pdisp01.c-wss.com/gdl/WWUFORedirectTarget.do?id=MDEwMDAwMzk1ODAx&cmp=ACM&lang=JA'
# tar -zxvf cnijfilter-mg6200series-3.60-1-deb.tar.gz
cd cnijfilter-mg6200series-3.60-1-deb
sudo ./install

rm -rf $TMP_DIR

