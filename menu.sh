#! usr/bin/bash

opcion="0"

until [[ $opcion =~ [1-6] ]]; do
	echo "(1)Generar imagenes. (2)Descargar imagenes. (3)Descargar imagenes. (4)Procesar imagenes."

	read -p "ingrese la opcion deseada" opcion

	case $opcion in
  		1)
			echo "elegiste la opcion1"
			;;
		2)
			echo "elegiste la opcion 2"
			;;
		3)
        		echo "elegiste la opcion 3"
			;;
		4)
        		echo "elegiste la opcion 4"
			;;
		5)
        		echo "elegiste la opcion 5"
			;;
  		*)
			echo "no corresponde al menu"
			;;
	esac

done
exit 0
