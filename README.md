# tpentorno
Para crear la imagen debe ejecutar el comando
sudo docker build -t tpentorno .
Recuerde que debe estar dentro de la carpeta donde se encuentra el Dockerfile aqui presentado.
A la hora de ejecutar la imagen deberá hacerlo con volumenes y la ejecución iterativa de la misma
Esto mismo se hace con el comando:
sudo docker run -it -v /carpeta/desucomputadora/:/home/entorno/salida tpentorno

O bien puede hacer pull de la imagen desde nuestro dockerhub: sudo docker pull julilc/tpentorno:v4
Luego al ejecutar la imagen: sudo docker run -it -v /carpeta/desupc:/home/entorno/salida julilc/tpentorno:v4
Observe que si hace pull el nombre de la imagen cambia
