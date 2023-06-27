#!/usr/bin/bash
cd imagenes
echo "procesando imagenes..."
sleep 3s
for IMAGEN in *; do
    if [[ "$IMAGEN" =~ ^[A-Z][a-z]+$ ]]; then
        convert "$IMAGEN" -gravity center -resize 512x512+0+0 \-extent 512x512 "$IMAGEN"
    fi
done

echo "imagenes procesadas con exito"
cd ..
./menu.sh
exit 0
else
	echo "el directorio no existe"
./menu.sh
exit 1
fi
cd ..


