FROM debian:buster
ARG domoticz_version_tag=2020.1
ARG cmake_version=3.17.0
ARG openzwave_version_tag=master
ENV DOMOTICZ_VERSION_TAG=${domoticz_version_tag}
ENV CMAKE_VERSION=${cmake_version}
ENV OPENZWAVE_VERSION_TAG=${openzwave_version_tag}
VOLUME /output
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install build-essential -y
RUN apt-get install libboost-dev libboost-thread-dev libboost-system-dev libsqlite3-dev subversion curl libcurl4-openssl-dev libusb-dev libudev-dev zlib1g-dev libssl-dev wget python3-dev liblua5.3-dev libcereal-dev -y
RUN apt remove --purge --auto-remove cmake
ADD build-domoticz.sh /tmp
RUN chmod 755 /tmp/build-domoticz.sh
CMD /tmp/build-domoticz.sh

