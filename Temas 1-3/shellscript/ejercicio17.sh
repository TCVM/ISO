#!/bin/bash
function Mayus_Minus(){
	for i in "$@";do
		echo "Ruta actual de los archivos en $(pwd)"
		nombre_mod=$(echo "$i" | tr '[:lower:][:upper:]' '[:upper:][:lower:]')
		echo "nombre original: $i, Nombre modificado: $nombre_mod"
	done
}

archivos=(*)
Mayus_Minus "${archivos[@]}"
exit 0
