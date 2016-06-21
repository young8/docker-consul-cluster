FROM phusion/baseimage
Maintainer Abhishek Amralkar<abhishekanand1984@gmail.com>

RUN apt-get update; apt-get install -y curl wget unzip
# Set correct environment variables.
ENV HOME /etc/consul

# Set up app
RUN mkdir -p /etc/consul
WORKDIR /etc/consul

# Setup for consul and baseimage init system
RUN mkdir /etc/service/consul 
ADD start_consul.sh /etc/service/consul/run
RUN chmod 777 /etc/service/consul/run
ADD consul.json /etc/
ENV CONSUL_VERSION=0.6.4


RUN ( cd /tmp && wget --no-check-certificate \
https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip \
-O /tmp/consul.zip && \
unzip /tmp/consul.zip && \
mv /tmp/consul /usr/bin && \
rm -rf /tmp/* )

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]
# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

