#! /bin/bash

# wget http://tutimura.ath.cx/~nob/tex/ptetex/ptetex3/ptetex3-20090610.tar.gz
# wget http://www.ring.gr.jp/pub/text/CTAN/obsolete/systems/unix/teTeX/3.0/distrib/tetex-src-3.0.tar.gz
# wget http://www.ring.gr.jp/pub/text/CTAN/obsolete/systems/unix/teTeX/3.0/distrib/tetex-texmf-3.0po.tar.gz

# if [ ! -e tmp ]; then
#   mkdir tmp
# else
#   echo "tmp file exists!" 1>&2
#   exit
# fi
cd tmp

# for i in ptetex3-20090610.tar.gz tetex-src-3.0.tar.gz tetex-texmf-3.0po.tar.gz; do
#   mv ../$i ./
#   tar -xzf $i
# done

cd ptetex3-20090610
# echo KANJI_CODE=UTF8 > my_option
# sudo yum install patch 
# sudo yum install gcc-c++ flex bison xorg-X11* libX* ghostscript ncurses-devel
# sudo yum groupinstall "Japanese Support"

# make
