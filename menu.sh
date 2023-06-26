#!/usr/bin/bash

opcion=0

until [[ $opcion =~ [1-4] ]]; do
	echo "(1)Generar imagenes. (2)Descargar imagenes. (3) Procesar imagenes. (4)Comprimir imagenes"

	read -p "ingrese la opcion deseada" opcion

	case $opcion in
  		1)
			read -p "ingrese el numero de imagenes a generar" numero
			bash generar.sh $numero
			;;
		2)
			echo "ingrese las rutas con comillas antes y al terminar los enlaces. Por ejemplo 'enlace.com'"
			read -p "ingrese ruta del archivo " ruta_archivo
			read -p "ingrese ruta del archivo de verificacion " ruta_sum

			bash descargar.sh "$ruta_archivo" "$ruta_sum"
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
