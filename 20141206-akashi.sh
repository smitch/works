#!/bin/bash

ref http://www.tequilafish.com/2012/01/26/installing_ruby_bundler_ubuntu_10-04/
sudo gem install rubygems-update
sudo /var/lib/gems/1.9.1/bin/update_rubygems
sudo gem install bundler
cd ~/hoge/trema
./build.rb
-> does not work!

ref http://blog.mkt-sys.jp/2012/04/vps-ubuntu-server-1004-ruby.html
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
tar -xvzf ruby-1.9.3-p194.tar.gz
cd ruby-1.9.3-p194
rm -rf ruby-1.9.3-p194.tar.gz ruby-1.9.3-p194
./configure
make
sudo make install

install bundle
sudo gem install bundler
sudo gem install rubygems-update

build trema
cd ~/hoge/trema
bundle install
./build.rb

sample run
cd ~/hoge/trema
./trema run ./objects/examples/dumper/dumper -c ./src/examples/dumper/dumper.conf
./trema send_packets --source host1 --dest host2 --n_pkts 10 # from another terminal
