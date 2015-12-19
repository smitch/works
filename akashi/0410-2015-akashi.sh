#! /bin/bash

# contents: install air video server
#                   system monitor indicator panel
#                   mozc

# TMP_DIR=tmp-0410-2015-akashi
# if [ ! -e $TMP_DIR ]; then
#   mkdir $TMP_DIR
# fi
# cd $TMP_DIR

# sudo add-apt-repository ppa:webupd8team/java
# sudo apt-get update
# sudo apt-get install libmp3lame-dev libfaad-dev libx264-dev faac faad lame  git-core libfaac-dev yasm oracle-java7-installer libsdl-gfx1.2-dev libsdl1.2-dev g++ bzr
# bzr branch lp:ubuntu/precise/mpeg4ip
# cd mpeg4ip
# cat debian/patches/* | patch -p1
# ./configure --prefix=/usr --disable-alsatest --disable-player
# make

# fix lib/rtp/Makefile line:328
# AM_CFLAGS = -DDEBUG -Wall -Werrorc
# fix lib/mpeg2ps/Makefile line:286

# sudo make install


# wget http://www.inmethod.com/airvideo/download/ffmpeg-for-2.4.5-beta7.tar.bz2
# tar -xvjf ffmpeg-for-2.4.5-beta7.tar.bz2
# cd ffmpeg
# ./configure --enable-pthreads --disable-shared --enable-static --enable-gpl --enable-libx264 --enable-libmp3lame --disable-decoder=aac
# make
# sudo make install
# wget http://inmethod.com/air-video/download/linux/alpha6/AirVideoServerLinux.jar

## not worked
## but succeeded along below

# http://forums.inmethod.com/topic/2291-air-video-server-hd-for-linux/

# sudo add-apt-repository ppa:indicator-multiload/stable-daily
# sudo apt-get update && sudo apt-get install indicator-multiload

# sudo apt-get isntall ibus-mozc
# http://d.hatena.ne.jp/kitokitoki/20120925/p2

# rm -rf $TMP_DIR
