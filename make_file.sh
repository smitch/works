#! /bin/bash

FILE_NAME=`date +%m%d-%Y`-`hostname`
touch $FILE_NAME.sh
chmod u+x $FILE_NAME.sh

git add $FILE_NAME.sh
