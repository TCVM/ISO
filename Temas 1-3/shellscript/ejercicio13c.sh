#!/bin/bash 

if [ $# -eq 1 ];then
	echo buscando ruta
	ruta=$(find / -name "$1" 2> /dev/null) #2>/dev/null evita el muestreo de ruta(?)
	echo 'ruta: ' $ruta
	if [ -n "$ruta" ];then #-n -> not null
		if [ -f "$ruta" ];then #-f -> existe file y es de tamaño regular 
			echo "El archivo existe y se encuentra en:"
			echo $ruta
		elif  [ -d "$ruta" ];then #existe file y es un directorio
			echo "El directorio existe y se encuentra en:"
			echo "$ruta"
		fi
	else
		echo "El directorio no se encontro, se crea uno con nombre $1"
	       	mkdir "./$1"
		if [ $? -eq 0 ];then
			echo "se creo directorio con el nombre $1"
		else
			echo "No se pudo crear directorio"
		fi
	fi
else
	echo "No se ingreso nombre del archivo/directorio"
fi
