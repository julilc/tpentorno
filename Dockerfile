#Utilizamos imagen Ubuntu
FROM ubuntu

MAINTAINER Julieta, David, Michel

#Instalamos wget, zip. imagemagick por si no lo tiene
RUN apt-get update && apt-get install -y git wget zip imagemagick

#Agregamos programas y carpeta salida
ADD menu.sh /home/entorno/menu.sh
ADD generar.sh /home/entorno/generar.sh
ADD descargar.sh /home/entorno/descargar.sh
ADD descomprimir.sh /home/entorno/descomprimir.sh
ADD procesar.sh /home/entorno/procesar.sh
ADD comprimir.sh /home/entorno/comprimir.sh
ADD nombres.csv /home/entorno/nombres.csv
ADD salida /home/entorno/salida
#Cambbiamos la direccion de trabajo adonde se encuentra el programa
WORKDIR /home/entorno

#Ejecutamos el programa menu.sh
CMD [mkdir salida]
CMD ["bash", "/home/entorno/menu.sh"]
