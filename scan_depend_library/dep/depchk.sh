#!/bin/bash
#单线程调用dependency进行扫描
while true;do
if test -s upload-list; then
	FILE=`head -1 upload-list`
	F=`basename $FILE`
	D=`dirname $FILE`
	sed -i '1d' upload-list
	/usr/local/dependency-check/bin/dependency-check.sh -f CSV -o $F.csv -s $FILE
	CRI=`grep CRITICAL $F.csv`
	if [  -z $CRI ];then
		mv $FILE /tmp
	else
		echo $CRI|awk -F ',' '{print $1,$4,$13,$14}' > $D/$F.csv
	fi
fi
sleep 10
done


