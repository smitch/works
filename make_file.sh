#! /bin/bash

FILE_NAME=`date +%Y-%m%d`
# FILE_NAME=`date +%m%d-%Y`-`hostname`
echo make file: $FILE_NAME.sh
HOSTNAME=`hostname`
SCRIPTDIR=`dirname $0`
cd $SCRIPTDIR

if [ ! -e $HOSTNAME ]; then
 mkdir $HOSTNAME
fi
cd $HOSTNAME

cat <<EOF > $FILE_NAME.sh
#! /bin/bash

# contents:

TMP_DIR=tmp-$FILE_NAME
if [ ! -e \$TMP_DIR ]; then
 mkdir \$TMP_DIR
fi
cd \$TMP_DIR

# WRITE SCRIPT HERE

# UNCOMMENT TO DELETE TMP DIR
cd ../
# rm -rf \$TMP_DIR

EOF

echo change permission:$FILE_NAME.sh u+x 
chmod u+x $FILE_NAME.sh

echo git add: $FILE_NAME.sh
git add $FILE_NAME.sh
