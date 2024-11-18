#!/bin/bash

echo '$#: ' $# 
echo '$1: ' $1
echo '$2: ' $2
echo '$3: ' $3

if [ $# -eq 3 ];then
	case "$2" in
	"x")
		result=$(expr $1 \* $3)
		;;
	+)
		result=$(($1 + $3))
		;;
	-)
		result=$(($1-$3))
		;;
	%)
		result=$(($1%$3))
		;;
	*)
		echo "No se ingreso una operacion valida"
		exit
		;;
	esac
	echo "El resultado de la operacion $1 $2 $3 es = $result"
else
	echo "Faltan argumentos"
	echo '$1:' $1
fi
