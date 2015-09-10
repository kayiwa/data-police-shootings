# base image
FROM phusion/baseimage:0.9.16

# Dependencies
RUN apt-get update -y && \
    apt-get install -y -qq \
    nginx-full \
    wget 

# Kibana
RUN mkdir -p /opt/kibana
RUN wget https://download.elastic.co/kibana/kibana/kibana-4.1.1-linux-x64.tar.gz -O /tmp/kibana.tar.gz && \
 tar zxf /tmp/kibana.tar.gz && mv kibana-4.1.1-linux-x64/* /opt/kibana/

# Configs
COPY kibana.yml /opt/kibana/config/kibana.yml
COPY entrypoint.sh /opt/entrypoint.sh
# make the script executable
RUN ["chmod", "+x", "/opt/entrypoint.sh"]

EXPOSE 5601

ENTRYPOINT ["/opt/entrypoint.sh"]
CMD []

