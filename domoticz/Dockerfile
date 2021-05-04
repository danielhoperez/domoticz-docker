FROM debian:buster
ARG domoticz_version=2021.1
ADD ./domoticz-${domoticz_version}.tar.gz /opt

VOLUME /data

RUN apt-get update
RUN apt-get install -y libusb-0.1 libcurl4 libpython3-dev

WORKDIR /opt/domoticz
EXPOSE 8081
EXPOSE 8443
EXPOSE 6144
CMD ./domoticz -www 8081 -sslwww 8443 -log /data/logs/domoticz.log -wwwroot /opt/domoticz/www -dbase /data/conf/domoticz.db -noupdates
