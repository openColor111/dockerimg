#!/bin/bash
if ! rpm -qa|grep docker;then 
curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun && systemctl start docker && systemctl enable docker
fi 
test /report || mkdir /report
docker run -v /report/:/app/templates/report --network host --rm registry.cn-chengdu.aliyuncs.com/system_centos/scan:v1 || docker run -v /report/:/app/templates/report --network host --rm registry.cn-chengdu.aliyuncs.com/system_centos/scan:v1 python manage.py runserver 0.0.0.0:8888

