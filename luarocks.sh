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
sudo luarock install luasocket
sudo luarock install luasec
sudo luarock install redis-lua
sudo luarock install ansicolors
sudo luarock install feedparser
fi
