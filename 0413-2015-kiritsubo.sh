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

############## mail setting ###################
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

#################################zabbix setting#################################################

# sudo rpm -ivh http://repo.zabbix.com/zabbix/2.4/rhel/6/x86_64/zabbix-release-2.4-1.el6.noarch.rpm
# sudo yum -y install zabbix-server zabbix-web
# sudo yum -y install zabbix-agent
# sudo yum -y install zabbix-get

# sudo vi /etc/yum.repos.d/zabbix.repo
# enabled=1 -> enabled=0





# rm -rf $TMP_DIR

