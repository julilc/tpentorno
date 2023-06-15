#Utilizamos imagen Ubuntu
FROM ubuntu

MAINTAINER michel

#Instalamos git por si no lo tiene
RUN apt-get update && apt-get install -y git

#Clonamos el repositorio de github donde se encuentra el programa
RUN git clone https://github.com/julilc/tpentorno /home/entorno

#Cambiamos la direccion de trabajo adonde se encuentra el repositorio clonado
WORKDIR /home/entorno

#Ejecutamos el programa menu.sh
CMD ["bash", "/home/entorno/menu.sh"]
