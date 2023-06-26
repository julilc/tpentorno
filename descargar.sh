#!/usr/bin/bash
if [ $# -eq 2 ]; then
	wget "$1" -O "imagenes.zip"
	sum1=$(sha256sum "imagenes.zip"|tr -d " ")
	sum2=$(curl "$2"| tr -d " ")
	if [[ $sum1 == $sum2 ]]; then
		echo "la suma de verificacion es correcta"
	exit 0
	else
		echo "error: la suma de verificacion es incorrecta"
		exit 1
	fi
else
	echo "error en los parametros pasados"
	exit 2
fi
