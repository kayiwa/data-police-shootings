FROM phusion/baseimage:0.9.16

# Set install version
ENV DEBIAN_FRONTEND noninteractive
ENV ES_PKG_NAME elasticsearch-1.7.1
#ENV ES_HEAP_SIZE=8g

# Install dependencies
RUN apt-get update -qq && \
  apt-get install -y -qq \
  wget \
  python \
  openjdk-7-jre-headless

# Install ElasticSearch
RUN \
  cd / && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES_PKG_NAME.tar.gz && \
  tar xvzf $ES_PKG_NAME.tar.gz && \
  rm -f $ES_PKG_NAME.tar.gz && \
  mv /$ES_PKG_NAME /elasticsearch

# Plugins
#RUN /elasticsearch/bin/plugin -i elasticsearch/license/latest
#RUN /elasticsearch/bin/plugin -i elasticsearch/shield/latest

# Config
ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# Expose ports
EXPOSE 9200
EXPOSE 9300
