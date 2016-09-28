#!/bin/bash

read -p "Do you want me to install luarocks? (yes/no):"

if [ "$REPLY" != "yes" ]; then
	echo "
"
else 
        echo "luarocks"
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
tar zxpf luarocks-2.2.2.tar.gz
cd luarocks-2.2.2.tar.gz
./configure;sudo make bootstrap
sudo luarocks install luasocket
sudo luarocks install luasec
sudo luarocks install redis-lua
sudo luarocks install ansicolors
sudo luarocks install feedparser
fi
