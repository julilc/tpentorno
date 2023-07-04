# tpentorno
Para crear la imagen debe ejecutar el comando
sudo docker build -t tpentorno .
Recuerde que debe estar dentro de la carpeta donde se encuentra el Dockerfile aqui presentado.
A la hora de ejecutar la imagen deberá hacerlo con volumenes y la ejecución iterativa de la misma
Esto mismo se hace con el comando:
sudo docker run -it -v /carpeta/desucomputadora/:/home/entorno/salida tpentorno

