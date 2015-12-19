#!/bin/bash

HOSTNAME=`hostname`
cd $HOSTNAME
for i in `ls`; do
  j=`echo $i | sed "s/-$HOSTNAME//"`
  # echo $j
  # echo git mv $i $j
git mv $i $j
done
