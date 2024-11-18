#!/bin/bash
echo $#
if [ $# -eq 2 ];then
	mult=$(expr $1 \* $2 )
	suma=$(($1 + $2))
	resta=$(($1 - $2))

       if [ $1 -gt $2 ];then
	       mayor=$1
       elif [ $2 -gt $1 ];then
               mayor=$2
       else
	       mayor="son iguales"
       fi

       echo "Multiplicacion = $mult"
       echo "Suma = $suma"
       echo "Resta = $resta"
       echo "El mayor numero es: $mayor"
else
       echo "Fatal argumentos"
       exit
fi       
