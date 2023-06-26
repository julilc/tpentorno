#!/usr/bin/bash

if [[ -e "imagenes.zip" ]]; then
	unzip "imagenes.zip"
	echo "se ha descomprimido su archivo"
	exit 0
else
	echo "el archivo no existe o no es un archivo zip"
	exit 1
fi

