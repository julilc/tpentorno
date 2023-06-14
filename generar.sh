#!usr/bin/bash

if [ $# -gt 0 ]; then
	mkdir -p imagenes
	i=0
	until [[ $i == $@ ]]; do
		nombre=$(sort -R nombres.csv |  tail -n 1 | cut -d "," -f "1" | cut -d " " -f "1")
		control=$(ls imagenes | grep "^$nombre$"; echo $?)
		while [[ $control -eq 0 ]]; do
			nombre=$(sort -R nombres.csv |  tail -n 1 | cut -d "," -f "1" | cut -d " " -f "1")
			$control=$(ls imagenes | grep $nombre)
		done
		wget https://source.unsplash.com/random/900%C3%97700/?person -O $nombre
		mv $nombre imagenes
		sleep 1s
		((i++))
	done
	zip -r imagenes.zip imagenes
	echo $(sha256sum imagenes.zip)>sumimagenes
	rm -r imagenes
exit 0

else
	echo "argumento invalidos"
	exit 1
fi

