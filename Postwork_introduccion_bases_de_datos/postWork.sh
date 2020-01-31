#!/bin/bash

echo "hola, vamos a crear la estructura de nuestro proyecto"

mkdir MiProyecto

cd MiProyecto

mkdir backups

mkdir recursos

echo "descargando datos"

curl -O http://files.grouplens.org/datasets/movielens/ml-1m.zip

unzip ml-1m.zip

rm ml-1m.zip

echo "creando respaldo"

cp ml-1m ../backups/ml-1m.1


