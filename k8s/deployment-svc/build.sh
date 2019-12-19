#!/bin/bash
config=`cat ./app.conf`
templ=`cat ./app-deploy-svc-template.yaml`
. ./app.conf
appname=$NS-$APP.yaml
printf "$config\ncat << EOF\n$templ\nEOF" | bash > $appname
