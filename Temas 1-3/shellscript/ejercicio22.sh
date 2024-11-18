#Dada la siguiente declaracion al comienzo de un script: num=(10 3 5 7 9 3 5 4)
#(la cantidad de celementos del arreglo puede variar). Implemente la funcion
#productoria dentro de este script, cuya tarea sea multiplicar todos los numeros
#del arreglo
 
#!/bin/bash
if [ $# -ne  0 ]; then
	exit 1
else
	num=(10 3 5 7 9 3 5 4)
	function productoria {
		local mult=1
		for ((i=0; i < ${#num[*]}; i++)); do
			mult=$(expr $mult \* ${num[i]})
		done
		echo "El resultado es: $mult"
	}
	productoria
fi
exit 0
