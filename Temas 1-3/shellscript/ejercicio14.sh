#!/bin/bash
if [ $# -ne 3 ];then
	echo "No se ingresaron todos los parametros"
	exit 1
fi

if [ ! -d $1 ];then
	echo "No se ingreso un directorio valido"
	exit 2
fi

if [ $2 != "-a" ] && [ $2 != "-b" ];then
	echo "No se ingreso una opcion valida para concatenar"
	echo "Ingrese -a o -b"
	exit 3
fi

pushd $1 >/dev/null
for archivo in $(ls);do
	if [ ! -f "$archivo" ];then
		continue
	fi
	if [ $2 = "-a" ];then
		mv $archivo $archivo$3
	else
		mv $archivo $3$archivo
	fi
done
popd >/dev/null
exit 0
