FROM  centos:7
MAINTAINER Neo

#general
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
#RUN yum -y clean up
RUN yum -y update && yum -y upgrade
RUN yum -y groupinstall "Development Tools"
#RUN yum -y clean up
RUN yum -y install wget
RUN yum -y install which
RUN yum -y  install telnet


#python
RUN yum install -y python36u python36u-libs python36u-devel python36u-pip


#nodejs
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs
