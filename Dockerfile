FROM centos:7

RUN rpm --import https://github.com/rabbitmq/signing-keys/releases/download/2.0/rabbitmq-release-signing-key.asc

COPY mongodb-org-4.0.repo /etc/yum.repos.d/mongodb-org-4.0.repo
COPY rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo

RUN yum install -y rabbitmq mongodb-org initscripts; yum clean all
