#! /bin/bash

# contents: install zabbix
#           mail relay setting, mysql setting
# ref(for zabbix): https://blog.apar.jp/linux/334/
# ref(for mail): http://d.hatena.ne.jp/machua/20120301/1330625122
#                http://qiita.com/YN0314/items/d1e8d13f398c27333f9c

TMP_DIR=tmp-0413-2015-kiritsubo
if [ ! -e $TMP_DIR ]; then
  mkdir $TMP_DIR
fi
cd $TMP_DIR

############## mail setting #####################################################################
# log in gmail account and enable double authentication
# generate password for application
# the password to input is the generated one
# vi /etc/postfix/gmail
# [smtp.gmail.com]:587 <gmail address>:<gmail password>
# ---------------------------
# chmod 600 /etc/postfix/gmail
# postmap /etc/postfix/gmail

# vi /etc/postfix/main.cf
# --------add below---------------------------
# relayhost = [smtp.gmail.com]:587
# smtp_sasl_auth_enable = yes
# smtp_sasl_password_maps = hash:/etc/postfix/gmail
# smtp_sasl_security_options = noanonymous
# smtp_sasl_tls_security_options = noanonymous
# smtp_sasl_mechanism_filter = plain
# smtp_use_tls = yes
# ------------------------------

# service postfix restart

# vi /etc/aliases
# ---------add below--------------------------
# root: <gmail address>
# ---------------------------
# newaliases

# echo test | mail -s hostname root

#################################mysql setting###################################################
# mkdir /var/log/mysql
# chown -R mysql:mysql /var/log/mysql
# mv -i /etc/my.cnf /etc/my.cnf.org
# vi /etc/my.cnf
# # ---add below---------------------------
# [mysqld]
# datadir=/var/lib/mysql
# socket=/var/lib/mysql/mysql.sock
# symbolic-links=0
# user=mysql
# character-set-server = utf8
# skip-character-set-client-handshake

# slow_query_log=1
# slow_query_log_file=/var/log/mysql/slow_query.log
# long_query_time=1
# min_examined_row_limit=1000

# [client]
# default-character-set = utf8

# [mysqld_safe]
# log-error=/var/log/mysql/mysqld.log
# pid-file=/var/run/mysqld/mysqld.pid
# ------------------------------
# service mysqld start
# chkconfig mysqld on
# mysql_secure_installation

#################################zabbix setting##################################################

# sudo rpm -ivh http://repo.zabbix.com/zabbix/2.4/rhel/6/x86_64/zabbix-release-2.4-1.el6.noarch.rpm
# sudo yum -y install zabbix-server zabbix-web
# sudo yum -y install zabbix-agent
# sudo yum -y install zabbix-get

# sudo vi /etc/yum.repos.d/zabbix.repo
# enabled=1 -> enabled=0

# mysql -u root -p
# --execute below—————————
# create database zabbix character set utf8;
# grant all privileges on zabbix.* to zabbix@localhost identified by <password>;
# FLUSH PRIVILEGES;
# exit
# ——————————

# mysql -uroot -p zabbix < /usr/share/doc/zabbix-server-mysql-2.4.2/create/schema.sql
# mysql -uroot -p zabbix < /usr/share/doc/zabbix-server-mysql-2.4.2/create/images.sql
# mysql -uroot -p zabbix < /usr/share/doc/zabbix-server-mysql-2.4.2/create/data.sql

# vi /etc/zabbix/zabbix_server.conf
# —modify below—————————
# # DBPassword=
# DBPassword=<password>
# ——————————

# restart httpd

# edit /etc/php.ini
# date.timezone="Asia/Tokyo"

# access localhost/zabbix
# default user is admin
#         password is zabbix
# change password Administration->user


# service zabbix-agent start
# chkconfig zabbix-agent on

# zabbix_get -s 172.16.1.20 -k agent.version

# rm -rf $TMP_DIR

