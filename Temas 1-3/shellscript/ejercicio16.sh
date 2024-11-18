#!/bin/bash
if [ $# -ne 1 ];then
	echo "No se paso una extension a buscar"
	exit 1
fi

informe="./reporte.txt"
>$informe

for usuario in $(ls /home);do 
	cant=$(find /home/$usuario -type f -name "*$1" | wc -l)
	if [ $cant -eq 0 ];then
		echo "Usuario:$usuario ----- Cantidad con extension $1: $cant" >> "$informe"
	else
		echo "Usuario:$usuario ----- Cantidad con extension $1: $cant" >> "$informe"
	fi
done
echo "Se genero un informe en $(pwd reporte.txt)"
exit 0
