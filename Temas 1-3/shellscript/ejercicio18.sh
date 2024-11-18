#!/bin/bash

if [ $# -ne 1 ];then
       echo "No se recibio parametro esperado"
       exit 1
fi

usuario=$( cat /etc/passwd | cut -d: -f1 | grep -w $1 | wc -l )
if [ $usuario -eq 0 ];then
	echo "usuario invalido"
	exit 2
fi

while true; do
	entro=$( who | cut -d' ' -f 1 | grep $1 | wc -l )
        if [ $entro -gt 0 ]; then
		echo "El usuario $1 ha ingresado"
		exit 0	
	fi
	sleep 10
done
