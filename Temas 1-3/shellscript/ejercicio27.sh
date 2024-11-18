#Realice un script que implemente a traves de la utilizacion de funciones 
#las operaciones basicas sobre arreglos:
#inicializar: crea un arreglo llamado array vacio
#agregar_elem:<parametro1>: agrega al final del arreglo el parametro recibido
#eliminar_elem<parametro1>: Elimina del arreglo el elemento que se encuentra
#en la posicion recibida como parametro. Debe validar que se reciba una posicion
#valida
#longitud: imprime la longitud del arreglo en pantalla
#imprimir: imprime todos los elementos del arreglo en pantalla
#inicializar_con_valores <parametros1><parametro2>:crea un arreglo con longitud
#<parametro1> y en todas las posiciones asigna el valor <parametro2>

#!/bin/bash

function inicializar {
	array=()
}
function agregar_elem {
	if [ $# -ne 1 ];then
		echo "Numero de parametros invalido"
	else
		array[${#array[*]}]=$1
	fi
}
function eliminar_elem {
	if [ $1 -lt ${#array[*]} ]; then
		unset array[$1]
		array=array[${array[*]}]
	else
		echo "ingrese posicion valida"
	fi
}
function longitud {
	echo "${#array[*]}"
}
function imprimir {
	echo "${array[*]}"
}
function inicializar_con_valores {
	if [ $# -ne 2 ];then
		echo "Numero de parametros invalido"
	else
		arreglo=()
		for ((i=0; i < $1; i++)); do
			arreglo[i]=$2
		done
		echo "arreglo: ${arreglo[*]}"
	fi
}

inicializar
agregar_elem 2
agregar_elem 1
agregar_elem 3
eliminar_elem 2
longitud
imprimir
inicializar_con_valores 3 4
exit 0
