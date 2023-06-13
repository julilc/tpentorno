#!/bin/bash

nombre=$1

if ls imagenes/ | grep -o "^$nombre$"; then #^ indica el comienzo de linea.  $Indica el final de linea en este caso del nombre buscado
		      #-o (--only-matching) - imprimir solo el patrón coincidente
    
    echo "El nombre $nombre está presente"
else
    echo "El nombre $nombre no está presente"
fi

