#!/usr/bin/bash

if [[ -e ./salida/"imagenes.zip" ]]; then
	unzip ./salida/"imagenes.zip" -d salida
	echo "se ha descomprimido su archivo"
	rm -r salida/imagenes.zip
	./menu.sh
	exit 0
else
	echo "el archivo no existe o no es un archivo zip"
	./menu.sh
	exit 1
fi

