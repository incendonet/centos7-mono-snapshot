# Base OS
FROM centos:7
MAINTAINER info@incendonet.com

# Env setup
ENV HOME /root
WORKDIR ~/

# Build deps
RUN yum install -y wget yum-utils

# Mono install
RUN \
	wget http://jenkins.mono-project.com/repo/xamarin.gpg && \
	rpm --import xamarin.gpg && \
	yum-config-manager --add-repo http://jenkins.mono-project.com/repo/centos/ && \
	yum -y install mono-snapshot-latest && \
	. mono-snapshot mono

