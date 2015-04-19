#! /bin/bash

# contents: install zabbix sender
#      ref: http://pocketstudio.jp/log3/2015/01/08/howto-use-zabbix-sender-with-raspberry-pi/

TMP_DIR=tmp-0419-2015-raspberrypi
# if [ ! -e $TMP_DIR ]; then
#  mkdir $TMP_DIR
# fi
# cd $TMP_DIR

# wget http://downloads.sourceforge.net/project/zabbix/ZABBIX%20Latest%20Stable/2.4.4/zabbix-2.4.4.tar.gz
# sudo groupadd zabbix
# sudo useradd -g zabbix zabbix

# tar -xvzf zabbix-2.4.4.tar.gz
# cd zabbix-2.4.4
# ./configure --enable-agent
# make
# sudo make install

# sudo touch /usr/local/bin/raspi_temp.sh
# sudo vi /usr/local/bin/raspi_temp.sh
# !/bin/bash
# echo "- raspi_cpu_temp" $(( `cat /sys/class/thermal/thermal_zone0/temp` / 1000 )) | \
# zabbix_sender -z 36.55.230.62 -s 'Zabbix server' -vv -i -

# sudo chmod 755 /usr/local/bin/raspi_temp.sh

# contab -e
# */7 * * * * /usr/local/bin/raspi_temp.sh

rm -rf $TMP_DIR
