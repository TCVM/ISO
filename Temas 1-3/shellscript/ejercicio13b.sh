#!/bin/bash
select opcion in "Listar" "DondeEstoy" "QuienEsta";do
	case $opcion in
		Listar)
			echo "El contenido del directorio es:"
			echo "$(ls)"
			exit
		;;
		DondeEstoy)
			echo "El directorio donde estoy es: $(pwd)"
			exit
		;;
		QuienEsta)
			echo "Los usuarios conectados son:"
			echo "$(who)"
			exit
		;;
		*) 
			echo "No se ingreso una opcion valida"
		;;
	esac
done
