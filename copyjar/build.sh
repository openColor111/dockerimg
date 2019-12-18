#!/bin/bash
config=`cat ./app.conf`
templ=`cat ./Dockerfile_temp`
DATE=`date +%Y%m%d`
. ./app.conf
printf "$config\ncat << EOF\n$templ\nEOF" | bash > Dockerfile
docker build . -t $APP:$DATE
