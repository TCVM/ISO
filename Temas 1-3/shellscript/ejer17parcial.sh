#!/bin/ba4shi

if [ $# -ne 0 ];then
	exit 1
fi

for i in $(cat /etc/passwd); do
	dirP=$(echo "$i" | cut -d: -f6)
	bash=$(echo "$i" | cut -d: -f7)
	user=$(echo "$i" | cut -d: -f1)
	if [ $(find $dirP -type d -name mailDir) ]
	then
		echo "$user" >>/var/report.txt
	fi
done
exit 0
