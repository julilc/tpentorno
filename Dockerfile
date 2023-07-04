#Utilizamos imagen Ubuntu
FROM ubuntu

MAINTAINER michel

#Instalamos git por si no lo tiene
RUN apt-get update && apt-get install -y git wget zip

#Clonamos el repositorio de github donde se encuentra el programa
ADD menu.sh /home/entorno/menu.sh
ADD generar.sh /home/entorno/generar.sh
ADD descargar.sh /home/entorno/descargar.sh
ADD descomprimir.sh /home/entorno/descomprimir.sh
ADD procesar.sh /home/entorno/procesar.sh
ADD comprimir.sh /home/entorno/comprimir.sh
ADD nombres.csv /home/entorno/nombres.csv

#Cambiamos la direccion de trabajo adonde se encuentra el repositorio clonado
WORKDIR /home/entorno

#Ejecutamos el programa menu.sh
CMD [mkdir salida]
CMD ["bash", "/home/entorno/menu.sh"]
