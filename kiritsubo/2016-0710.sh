#! /bin/bash

# contents: create mysql database for living

# mysql -u root -p daily_record <<EOF
# create table living(id int auto_increment, record_date date, index(id));
# select * from living;
# EOF
# mysql -u root -p daily_record <<EOF
# alter table living add lunch varchar(10);
# EOF
# mysql -u root -p daily_record <<EOF
# alter table living add dinner varchar(10);
# alter table living add topcoder_round int;
# alter table living add topcoder_difficulty int;
# alter table living add wash boolean;
# alter table living add weather char(10);
# alter table living add atomosphic_pressure int;
# alter table living add garbage boolean;
# alter table living add sleep boolean;
# alter table living add zen boolean;
# alter table living add eye boolean;
# alter table living add training char(10);
# EOF

mysql -u root -p daily_record <<EOF
alter table living drop training;
alter table living add training char(10);
EOF

# TMP_DIR=tmp-2016-0710
# if [ ! -e $TMP_DIR ]; then
#  mkdir $TMP_DIR
# fi
# cd $TMP_DIR

# WRITE SCRIPT HERE

# UNCOMMENT TO DELETE TMP DIR
# cd ../
# rm -rf $TMP_DIR

