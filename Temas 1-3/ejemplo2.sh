#!/bin/bash

# Práctica 3 - Ejercicio 18.
#
# Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en
# el sistema (el nombre del usuario será pasado por parámetro). Cuando el
# usuario finalmente se loguee, el programa deberá mostrar el mensaje
# ”Usuario XXX logueado en el sistema” y salir.

# Verificar que se haya ingresado un usuario
if [ $# -ne 1 ]; then
  echo Ingresar el usuario
  exit 1
fi

# grep -w: coincida la palabra completa
existe=$(cat /etc/passwd | cut -d : -f 1 | grep -w $1 | wc -l)
if [ $existe -eq 0 ]; then
    echo no existe el usuario $1
    exit 2
fi

#while true; do
#    logeado=$(users | grep -wc $1)
#    if  [ $logeado - eq 1 ]; then
#        echo El usuario está logeado
#        exit 0
#    fi
#
#    sleep 10
#done


logueado=$(users | grep -wc $1)
while [[ logueado -eq 0 ]]; do
    echo Esperando a que el usuario se loguee...
    sleep 10
    logueado=$(users | grep -wc $1)
done
echo El usuario está logueado
exit 0

