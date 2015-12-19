#! /bin/bash

wordpress setup ref: http://qiita.com/speg03/items/516c5c0ca727b47c3d23

sudo yum install httpd mysql-server php php-mysql php-mbstring

sudo chkconfig mysqld on
sudo service mysqld start
mysql_secure_installation

mysql -uroot -p
## mysql> create database wordpress;
## mysql> grant all privileges on wordpress.* to wordpress@localhost identified by 'wordpress';
## mysql> flush privileges;
## mysql> quit

curl -LO http://ja.wordpress.org/latest-ja.tar.gz
tar xvzf latest-ja.tar.gz
rm latest-ja.tar.gz
sudo mv wordpress /var/www/html

cd /var/www/html/wordpress
cp wp-config-sample.php wp-config.php
TMP_FILE_NAME=tmp-`date +%y%m%d`.txt
cat wp-config.php \
  | sed s/database_name_here/wordpress/ \
  | sed s/username_here/wordpress/ \
  | sed s/password_here/wordpress/ \
  > ~/$TMP_FILE_NAME
sudo mv ~/$TMP_FILE_NAME wp-config.php

sudo chown -R apache:apache /var/www/html/wordpress

cat <<EOF > ~/wordpress.conf
<Directory /var/www/html/wordpress>
  AllowOverride All
</Directory>
EOF
sudo mv ~/wordpress.conf /etc/httpd/conf.d/

sudo chkconfig httpd on
sudo service httpd restart
