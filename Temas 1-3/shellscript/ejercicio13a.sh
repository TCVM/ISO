#!/bin/bash
for i in {1..100}
do
	cuadrado=$(expr $i \* $i )
	echo "El cuadrado de $i es = $cuadrado"
done
