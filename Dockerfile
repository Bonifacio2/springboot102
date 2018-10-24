FROM centos:7

RUN yum install -y rabbitmq mongodb; yum clean all