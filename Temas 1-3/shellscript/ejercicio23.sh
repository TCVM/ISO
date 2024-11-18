#Implemente un script que recorra un arreglo compuesto por numeros e imprima en
#pantalla solo los numeros pares y que cuente solo los numeros impares y los
#informe en pantalla al finalizar el recorrido

#!/bin/bash

if [ $# -ne 0 ]; then
	exit 1
else
	arreglo=(1 2 3 4 5 6 7 8 9 10)
	cantImp=0
	for i in ${arreglo[*]}; do
		if [ $(expr $i % 2) -eq 0 ]; then
			echo "Numero par: $i"
		else
			cantImp=$(expr $cantImp + 1)
		fi
	done
	echo "Cantidad impares: $cantImp "
fi
exit 0

