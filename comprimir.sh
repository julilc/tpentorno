#!/usr/bin/bash

if [ -d imagenes ]; then
	ls imagenes>nombresimagenes
	ls imagenes|grep -oE '^[A-Z][a-z]+$'>nombresvalidos
	ls imagenes|grep -c '^[A-Z][a-z][a]$'>nombresfinalizadoscona

zip -r imagenesfinales.zip imagenes nombresimagenes nombresvalidos nombresfinalizadoscona
rm -r imagenes nombresimagenes nombresvalidos nombresfinalizadoscona
echo "se comprimieron las imagenes"
./menu.sh
exit 0
else
	echo"error al comprimir, puede que no exista la carpeta"
./menu.sh
exit 1
fi


