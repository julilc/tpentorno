#!/usr/bin/bash
if [ $# -eq 2 ]; then
	wget "$1" -O "imagenes.zip"
	sum1=$(sha256sum "imagenes.zip"|tr -d " ")
	sum2=$(wget "$2" -O "archivosum" |cat archivosum | tr -d " ")
	if [[ $sum1 == $sum2 ]]; then
		echo "la suma de verificacion es correcta"
	./menu.sh
	exit 0
	else
		echo "error: la suma de verificacion es incorrecta"
	./menu.sh
	exit 1
	fi
else
	echo "error en los parametros pasados"
	./menu.sh
	exit 2
fi
