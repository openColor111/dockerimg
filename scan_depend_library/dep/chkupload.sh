#!/bin/bash
#校验ftp上传文件，并追加到upload-list
BASE=/var/ftp
while true;do
	DT=`date -d "2 second ago"|sed 's/CST //g'`
	F=`grep "$DT"  /var/log/vsftpd.log |grep  'OK UPLOAD'|awk '{print $13}'|awk -F'"' '{print $2}'`
	if [ ! -z "$F" ];then
		for i in `echo $F`;do
			echo $BASE$i >> upload-list
		done
	fi
	sleep 1
done

