#! usr/bin/bash

if [ $# -eq 0 ]; then
	for argumentos in $#; do
		nombre="$(sort -R nombres.csv |  tail -n 1 | cut -d "," -f "1" | cut -d " " -f "1")"
		while  [-e $nombre "/imagenes"]; do
			$nombre=$(sort -R nombres.csv |  tail -n 1 | cut -d "," -f "1" | cut -d " " -f "1")
		done
	wget https://source.unsplash.com/random/900%C3%97700/?person -O $nombre
	mv $nombre imagenes
	done

exit 0

else
	echo "argumento invalidos"
	exit 1
fi

