#!/bin/bash

HOSTNAME="raspberrypi"
cd $HOSTNAME
for i in `ls`; do
  j=`echo $i | sed "s/-$HOSTNAME//"`
  # echo $j
  MDY=`echo $j | sed "s/.sh//"`
  # echo $MDY
  Y=`echo $MDY | sed 's/.*-//'`
  MD=`echo $MDY | sed 's/-.*//'`
  # echo $Y
  # echo $MD
  echo git mv $i $Y-$MD.sh
  git mv $i $Y-$MD.sh
done
