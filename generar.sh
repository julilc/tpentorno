#! usr/bin/bash

if [ $# -gt 0 ]; then
	mkdir imagenes
	for argumentos in $#; do
		nombre="$(sort -R nombres.csv |  tail -n 1 | cut -d "," -f "1" | cut -d " " -f "1")"
		control=$(ls imagenes | grep "^$nombre$")
		while  [$control -eq 0]; do
			$nombre=$(sort -R nombres.csv |  tail -n 1 | cut -d "," -f "1" | cut -d " " -f "1")
			$control=$(ls imagenes | grep $nombre)
		done
	wget https://source.unsplash.com/random/900%C3%97700/?person -O $nombre
	mv $nombre imagenes
	done
	for imagen in imagenes/*; do
		sha256sum "$imagen" >> sumimagenes
	done
	mv sumimagenes imagenes -i
	zip -r imagenes.zip imagenes
	rm -r imagenes
exit 0

else
	echo "argumento invalidos"
	exit 1
fi

