#!/usr/bin/bash


if [ $# -gt 0 ]; then
	mkdir -p imagenes
	i=0
	until [[ $i == $@ ]]; do
		NOMBRE=$(sort -R nombres.csv |  tail -n 1 | cut -d "," -f "1" | cut -d " " -f "1")
		CONTROL=$(ls imagenes | grep "^$NOMBRE$"; echo $?)
		while [[ $CONTROL -eq 0 ]]; do
			nombre=$(sort -R nombres.csv |  tail -n 1 | cut -d "," -f "1" | cut -d " " -f "1")
			$CONTROL=$(ls imagenes | grep $NOMBRE)
		done
		NOMBREMAYQ="${NOMBRE^}"
		wget https://source.unsplash.com/random/900%C3%97700/?person -O $NOMBREMAYQ
		mv $NOMBREMAYQ imagenes
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

