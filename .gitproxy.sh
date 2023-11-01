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
		echo check:
		git config --global --get http.proxy;git config --global --get https.proxy
		exit 0

	elif [ "$1" == "unset" ]
	then
		echo "canceling git proxy"
		git config --global --unset http.proxy
		git config --global --unset https.proxy
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
	echo "      unset: to disable git proxy"
	exit 0
fi

