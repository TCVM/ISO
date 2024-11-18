#Realice un script que agregue en un arreglo todos los nombres de 
#los usuarios del sistema pertenecientes al grupo "users".
#Adicionalmente el script puede recibir como parametro:
#
#"-b n":Retorna el elemento de la posicion n del arreglo si el mismo existe.
#Caso contrario, un mensaje de error.
#"-l":Devuelve la longitud del arreglo
#"-i":imprime todos los elementos del arreglo en pantalla

#!/bin/bash

if [ $# -lt 1 ];then
	echo "no se pasaron argumentos insuficientes"
	exit 1
fi

usuarios=()
usuarios=($(grep -w users /etc/group | cut -d: -f4 | tr ',' ' '))

case $1 in
	'-b')
		if [[ $# -ne 2  ]]; then
			echo "Cantidad de parametros invalida"
			exit 2
		fi
		if [[ $2 -ge ${#usuarios[@]} ]]; then
			echo "$2 no es una posicion valida del arreglo"
			exit 3
		fi
		echo ${usuarios[$2]}
	;;
	'-l')
		echo ${#usuarios[@]}
	;;
	'-i')
		echo ${usuarios[*]}
	;;
	*)
		echo "$2 no es una opcion valida"
		exit 4
	;;
esac
exit 0
