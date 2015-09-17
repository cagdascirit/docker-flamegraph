FROM debian:jessie

MAINTAINER Cagdas Cirit <cagdascirit@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \
	apt-get -y install \
	ca-certificates \
	gcc \
	python-dev \
	python-setuptools && \
	easy_install pip && \
	pip install influxdb && \
	pip install blist

ADD flamegraph/* /var/local/flamegraph/

RUN apt-get -y remove \
	ca-certificates \
	gcc \
	python-dev \
	python-setuptools && \
	apt-get -y install python && \
	apt-get -y --purge autoremove && \
	apt-get -y clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
	
VOLUME ["/data"]

ENTRYPOINT ["/var/local/flamegraph/flamegraph.sh"]
CMD ["influxdb","8086","root","root","jvm","username.job.flow.stage.phase","cirit.loadtest.X.1.1","/data/in","/var/local/flamegraph/empty_filter.txt","0","/data/out","-minwidth","0"]
