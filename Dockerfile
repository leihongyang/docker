FROM centos:7

RUN echo "[dockerrepo]
    name=DockerRepository
    baseurl=https://yum.dockerproject.org/repo/main/centos/7
    enabled=1
    gpgcheck=1
    gpgkey=https://yum.dockerproject.org/gpg" > /etc/yum.repos.d/docker.repo

RUN yum update && yum install docker-engine
RUN systemctl start docker.service
