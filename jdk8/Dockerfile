From centos:7
RUN yum install -y iproute bzip2\
        && yum clean all \
        && rm -rf /var/cache/yum/*
RUN curl -O http://$URL/binary_code/jdk/jdk1.8.0_181.tar ; tar xf jdk1.8.0_181.tar -C /usr/ ; rm -f jdk1.8.0_181.tar ; ln -s /usr/jdk1.8.0_181 /usr/jdk; ln -s
/usr/jdk/bin/* /usr/bin/;

