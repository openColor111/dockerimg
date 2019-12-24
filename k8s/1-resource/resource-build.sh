#!/bin/bash
#创建登录镜像仓库秘钥
#创建名称空间
#创建名称空间资源限制
. ./resource.conf
kubectl create namespace $NS
kubens $NS
kubectl create secret docker-registry $NS-reg --docker-server=reg.esgcc.com.cn --docker-username=$NS --docker-password=$PASS --docker-email=$EM
config=`cat ./resource.conf`
templ=`cat ./resource-temp.yam`
printf "$config\ncat << EOF\n$templ\nEOF" | bash > $NS-resource.yaml
kubectl apply -f $NS-resource.yaml
