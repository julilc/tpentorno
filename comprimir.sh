#!/usr/bin/bash

if [ -d imagenes ]; then
	ls imagenes>nombresimagenes
	ls imagenes|grep -oE '^[A-Z][a-z]+$'>nombresvalidos
	ls imagenes|grep -oE '^[A-Z][a]+$'>nombresfinalizadoscona

zip -r imagenesfinales.zip imagenes nombresimagenes nombresvalidos nombresfinalizadoscona
rm -r imagenes nombresimagenes nombresvalidos nombresfinalizadoscona
exit 0
else
	echo"error al comprimir, puede que no exista la carpeta"
exit 1
fi


