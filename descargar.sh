#!/usr/bin/bash
if [ $# -eq 2 ]; then
	sum1=$(sha256sum $1|tr -d " ")
	sum2=$(cat $2| tr -d " ")
	if [[ $sum1 == $sum2 ]]; then
		unzip $1
	exit 0
	else
		echo "error: la suma de verificacion es incorrecta"
		exit 1
	fi
else
	echo "error en los parametros pasados"
	exit 2
fi
