#!/bin/bash
if [ $# -ne 0 ];then
	exit 1
else
	pila=()
	function push {
		pila[${#pila[*]}]=$1
	}

	function pop {
		unset pila[$(expr ${#pila[*]} - 1)]
	}
	function lenght {
		return ${#pila[*]}
	}
	function print {
		echo "${pila[*]}"
	}
	echo "tamaño $?"
	echo "push"
	push 1
	push 2
	push 3
	push 4
	push 5
	push 6
	push 7
	push 8
	push 9
	push 10
	lenght
	echo "tamaño $?"
	echo pop
	pop
	pop
	pop
	lenght
	echo "tamaño $?"
	print
fi
exit 1
