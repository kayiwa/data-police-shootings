# base image
FROM phusion/baseimage:0.9.16

ENV DEBIAN_FRONTEND noninteractive
ENV LOGSTASH_VER 1.5.2
ENV LS_HEAP_SIZE=2g
WORKDIR /opt

# Dependencies
RUN apt-get update -qq && \
 apt-get install -y -qq \
 wget \
 python \
 openjdk-7-jre-headless

# Install Logstash
RUN wget --quiet "https://download.elasticsearch.org/logstash/logstash/logstash-$LOGSTASH_VER.tar.gz" -O 
"/opt/logstash-$LOGSTASH_VER.tar.gz" --no-check-certificate && \
 tar zxf logstash-$LOGSTASH_VER.tar.gz && \
 mv logstash-$LOGSTASH_VER logstash

# Copy the config files.
COPY server.conf /etc/logstash/server.conf

CMD /opt/logstash/bin/logstash -f /etc/logstash/server.conf
