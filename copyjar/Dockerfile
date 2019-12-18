FROM centos:7-jdk8
WORKDIR /opt
RUN mkdir /opt/jar-app && useradd -m mallapp -u 1001 && chown -R  mallapp /opt
USER 1001
COPY app.jar /opt/jar-app
EXPOSE 8080
ENTRYPOINT java -jar jar-app/app.jar
