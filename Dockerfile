# Utilizamos una imagen de Ubuntu
FROM ubuntu:22.04

MAINTAINER michel

COPY menu.sh /home/

RUN chmod +x /home/menu.sh

# Este comando ejecuta el archivo menu.sh cuando se inicie el contenedor
CMD ["/home/menu.sh"]

