#!/bin/bash

if [ $# -eq 1 ]
then
	if [ "$1" == "set" ]
	then
		echo "setting git proxy"
		host_ip=127.0.0.1
		#host_ip=$(cat /etc/resolv.conf |grep "nameserver" |cut -f 2 -d " ")
		echo "host ip: $host_ip"
		cmd_string="git config --global http.proxy $host_ip:10809"
		$cmd_string
		cmd_string="git config --global https.proxy $host_ip:10809"
		$cmd_string
		if grep -q "Host github.com" ~/.ssh/config; then
			echo ssh proxy already set
		else
			if grep -q "#github proxy setting" ~/.ssh/config; then
				if uname=="Darwin";then
					gsed -i "/#github/a ProxyCommand nc -w 120 -X connect -x 127.0.0.1:10809 %h %p" ~/.ssh/config
					gsed -i "/#github/a Host github.com" ~/.ssh/config
				else
					sed -i "/#github/a ProxyCommand nc -w 120 -X connect -x 127.0.0.1:10809 %h %p" ~/.ssh/config
					sed -i "/#github/a Host github.com" ~/.ssh/config
				fi
			else
				if uname=="Darwin";then
					gsed -i '$a #github proxy setting' ~/.ssh/config
					gsed -i "/#github/a ProxyCommand nc -w 120 -X connect -x 127.0.0.1:10809 %h %p" ~/.ssh/config
					gsed -i "/#github/a Host github.com" ~/.ssh/config
				else
					sed -i '$a #github proxy setting' ~/.ssh/config
					sed -i "/#github/a ProxyCommand nc -w 120 -X connect -x 127.0.0.1:10809 %h %p" ~/.ssh/config
					sed -i "/#github/a Host github.com" ~/.ssh/config
				fi
			fi
				
		fi
		echo check:
		git config --global --get http.proxy;git config --global --get https.proxy
		exit 0

	elif [ "$1" == "clear" ]
	then
		echo "clearing git proxy"
		git config --global --unset http.proxy
		git config --global --unset https.proxy
		if grep -q "Host github.com" ~/.ssh/config; then
			if uname=="Darwin";then
				gsed -i '/Host github.com/d' ~/.ssh/config
				gsed -i '/ProxyCommand nc -w 120 -X connect -x 127.0.0.1:10809 %h %p/d' ~/.ssh/config
			else
				sed -i '/Host github.com/d' ~/.ssh/config
				sed -i '/ProxyCommand nc -w 120 -X connect -x 127.0.0.1:10809 %h %p/d' ~/.ssh/config
			fi
		else
			echo "ssh proxy not have been set"
		fi
		echo check:
		git config --global --get http.proxy;git config --global --get https.proxy
		exit 0

	else
		echo "arguement error"
		exit 1
	fi
else
	echo "usage: gitproxy [arg]"
	echo "[arg]:"
	echo "      set:   to enable git proxy"
	echo "      clear: to disable git proxy"
	echo check:
	git config --global --get http.proxy;git config --global --get https.proxy
	exit 0
fi

