FROM centos:8

RUN yum install subversion -y
VOLUME /project
WORKDIR /project
