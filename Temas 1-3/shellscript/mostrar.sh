#!/bin/bash
#comentario random porque me da paja copiar el resto
echo "fecha y hora actual:"
date
echo "su apellido y nombre es:"
echo "$apellido $nombre"
echo "su usuario es: `whoami`"
echo "su directorio actual es:"
echo "mi directorio personal es:$HOME "
echo "el contenido del directorio es: $(ls /home/thecague)"
echo "el espacio libre en el disco es: $(df -h)"
