#!/usr/bin/bash

opcion="0"

until [[ $opcion =~ [1-4] ]]; do
	echo "(1)Generar imagenes. (2)Descargar imagenes. (3) Procesar imagenes. (4)Comprimir imagenes"

	read -p "ingrese la opcion deseada" opcion

	case $opcion in
  		1)
			read -p "ingrese el numero de imagenes a generar" numero
			bash generar.sh $numero
			;;
		2)
			read -p "ingrese ruta del archivo" $1
			read -p "ingrese ruta del archivo de verificacion" $2

			bash descargar.sh $1 $2
			;;
		3)
			bash procesar.sh
			;;
		4)
        		bash comprimir.sh
			;;
		*)
			echo "no corresponde al menu"
			;;
	esac

done
exit 0
