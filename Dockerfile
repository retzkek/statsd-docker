FROM centos:7

# install dependancies
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y update 
RUN yum -y install git nodejs

# install statsd
ARG statsd_version=v0.8.0
ARG statsd_repo=https://github.com/etsy/statsd.git
RUN git clone -b ${statsd_version} ${statsd_repo} /opt/statsd

# add config
ADD config_*.js /opt/statsd/

WORKDIR /opt/statsd
CMD /usr/bin/node stats.js config_${STATSD_INTERFACE:-udp}.js
EXPOSE 8125
