FROM phusion/baseimage:0.9.16

ENV DEBIAN_FRONTEND noninteractive
ENV LOGSTASH_VER 1.5.4
ENV LS_HEAP_SIZE=2g
WORKDIR /opt

# Dependencies
RUN apt-get update -qq && \
 apt-get install -y -qq \
 wget \
 python \
 openjdk-7-jre-headless

# Install Logstash
RUN wget --quiet "https://download.elasticsearch.org/logstash/logstash/logstash-$LOGSTASH_VER.tar.gz" -O "/opt/logstash-$LOGSTASH_VER.tar.gz" --no-check-certificate && \
 tar zxf logstash-$LOGSTASH_VER.tar.gz && \
 mv logstash-$LOGSTASH_VER logstash


# Copy the generated signed certs
COPY logstash-forwarder.key /etc/logstash/logstash-forwarder.key
COPY logstash-forwarder.crt /etc/logstash/logstash-forwarder.crt

# Copy the config files.
COPY server.conf /etc/logstash/server.conf

# lumberjack port
#EXPOSE 4545

CMD /opt/logstash/bin/logstash -f /etc/logstash/server.conf
