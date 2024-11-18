#Escriba un script que reciba una cantidad desconocida de parametros al
#momento de su invocacion(debe validar que al menos se reciba uno). Cada
#parametro representa la ruta absoluta de un archivo o directorio en el sistema.
#El script debera iterar por todos los parametros recibidos, y solo para 
#aquellos parametros que se encuentren en posiciones impares(el primero,
# el tercero,el quinto,etc.), verificar si el archivo o directorio existen en 
# el sistema, imprimiendo en pantalla que tipo de objeto es (archivo o directo-
# rio). Ademas, debera informar la cantidad de archivos o directorios inexisten-
# tes en el sistema.

#!/bin/bash
if [ $# -lt 1 ];then
	echo "No se alcanza el numero de parametros requerido"
	exit 1
fi

cantidad=0
iteracion=0
for i in $*;do
	let iteracion++
	if [ $(expr $iteracion % 2) -ne 0 ];then
		if ! [ -e $i ]; then
			echo "No existe"
			cant=$(expr $cant + 1)
		else
			if [ -d $i ];then
				echo "Es un directorio"
			else
				if [ -f $i ]; then
					echo "es un archivo"
				fi
			fi
		fi
	else
		continue 2
	fi
done

echo "cantidad de archivos inexistentes: $cant"

exit 0
