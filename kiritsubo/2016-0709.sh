#! /bin/bash

# contents: install apache php mysql
# ref http://webkaru.net/linux/apache-mysql-php-install/

# sudo yum install httpd mysql-server php php-mysql

# echo "add below to /etc/sysconfig/iptables"
# echo "-A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT"

# sudo service iptables restart
# sudo service httpd start
# sudo chkconfig httpd on

# cat <<EOF > phpinfo.php
# <?php
# phpinfo()
# ?>
# EOF

# sudo mv phpinfo.php /var/www/html/

sudo service mysqld start
sudo chkconfig mysqld on
mysql -u root
echo "set password"

# TMP_DIR=tmp-2016-0709
# if [ ! -e $TMP_DIR ]; then
#  mkdir $TMP_DIR
# fi
# cd $TMP_DIR

# WRITE SCRIPT HERE

# UNCOMMENT TO DELETE TMP DIR
# cd ../
# rm -rf $TMP_DIR

