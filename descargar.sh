#!/usr/bin/bash
if [ $# -eq 2 ]; then
	wget $1 "imagenes.zip"
	sum1=$(sha256sum imagenes.zip|tr -d " ")
	descargasuma= wget $2
	sum2=$(cat $descargasuma| tr -d " ")
	if [[ $sum1 == $sum2 ]]; then
		"la suma de verificacion es correcta"
	exit 0
	else
		echo "error: la suma de verificacion es incorrecta"
		exit 1
	fi
else
	echo "error en los parametros pasados"
	exit 2
fi
