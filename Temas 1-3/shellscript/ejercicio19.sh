#!/bin/bash
#Escribir un programa de "menu de comandos amigable con el usuario" llamado menu, el cual, al ser invocado,
#mostrara un menu con la seleccion para cada uno de los scripts creados en esta practica. Las instrucciones
# de como proceder deben mostrarse junto con el menu. El menu debera iniciarse y permanecer activo hasta qu
# e se selecciona Salir.
while true;do
	select option in "Ejercicio3" "Ejercicio12" "Ejercicio13" "Ejercicio14" "Ejercicio16" "Ejercicio17" "Ejercicio18" "Salir"; do
		case $option in 
			Ejercicio3) 
				echo $(./mostrar.sh)
				exit
				;; 
			Ejercicio12)
				bash ejercicio12.sh
				exit
				;;
			Ejercicio13)
				echo $(./ejercicio13a.sh)
				exit
				;;
			Ejercicio14)
				echo "Renombrado de archivos en un directorio: -a CADENA concatena CADENA
				al final del nombre, -b CADENA concatena CADENA al principio del nombre"
				echo "Ingrese un directorio"
				read arg1
				echo "ingrese el formato"
				read arg2
				echo "ingrese la CADENA"
				read arg3
				bash ejercicio14.sh $arg1 $arg2 $arg3
				exit
				;;
			Ejercicio16)
				echo "muestra la cantidad de archivos que poseen una extension pasada por parametro"
				echo "ingrese extension"
				read arg4
				bash ejercicio16.sh $arg4
				exit
				;;
			Ejercicio17)
				echo "intercambia minusculas por mayusculas y viceversa de los nombres de los archivos del directorio actual"
				bash ejercicio17.sh
				exit
				;;
			Ejercicio18)
				echo "verifica cada 10 segundos si el usuario ingresado se ha logueado en el sistema"
				echo "ingrese usuario"
				read arg1
				bash ejercicio18.sh $arg1
				exit
				;;
			Salir)	
				break 2

		esac

	done
done
