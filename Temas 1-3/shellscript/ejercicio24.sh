#Dada la definicion de 2 vectores del mismo tamaño y cuyas longitudes no se
#conocen.
#vector1=(1..N)
#vector2=(7..N)
#Complete este script de manera tal de implementar la suma elemento a elemento 
#entre ambos vectores y que la misma sea inmpresa en pantalla de la siguiente
#manera:
#La suma de los elementos de la posicion 0 de los vectores es 6
#La suma...
#
#!/bin/bash

vec1=(1 2 3 4 5 6 7 8 9 10)
vec2=(7 8 9 10 11 12 13 14 17 16 17)

for ((i=0; i<10; i++)); do
	aux=$(expr ${vec1[$i]} + ${vec2[$i]})
	echo "La suma de los elementos en la posicion $i es $aux"
done


