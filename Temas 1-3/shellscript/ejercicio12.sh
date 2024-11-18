#!/bin/bash
echo "ingrese numeros a multiplicar, sumar, restar y comparar"
echo "primero"
read arg1
echo "segundo"
read arg2

mult=`expr $arg1 \* $arg2`
suma=$(($arg1 + $arg2))
resta=$(($arg1 - $arg2))

if [ $arg1 -gt $arg2 ];then
	mayor=$arg1
elif [ $arg2 -gt $arg1 ];then 
	mayor=$arg2
else
	mayor="son iguales"
fi

echo "Multiplicacion = $mult"
echo "Suma = $suma"
echo "resta = $resta"
echo "el mayor numero es: $mayor"
