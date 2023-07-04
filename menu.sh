#!/usr/bin/bash

opcion=0

until [[ $opcion =~ [1-6] ]]; do
	echo "(1)Generar imagenes. (2)Descargar imagenes. (3)Descomprimir imagenes. (4) Procesar imagenes. (5)Comprimir imagenes. (6)Salir."

	read -p "ingrese la opcion deseada: " opcion

	case $opcion in
  		1)
			read -p "ingrese el numero de imagenes a generar: " numero
			bash generar.sh $numero
			;;
		2)
			echo "ingrese las rutas con comillas antes y al terminar los enlaces. Por ejemplo 'enlace.com'"
			read -p "ingrese ruta del archivo: " ruta_archivo
			read -p "ingrese ruta del archivo de verificacion: " ruta_sum

			bash descargar.sh "$ruta_archivo" "$ruta_sum"
			;;
		3)
			bash descomprimir.sh
			;;
		4)
			bash procesar.sh
			;;
		5)
        		bash comprimir.sh
			;;
		6)
			exit
			;;
		*)
			echo "no corresponde al menu"
			;;
	esac

done
exit 0
