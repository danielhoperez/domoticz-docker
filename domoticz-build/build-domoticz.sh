#!/bin/bash

mkdir -p /opt/domoticz
cd /opt/
wget https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION.tar.gz
tar -xzvf cmake-${CMAKE_VERSION}.tar.gz
rm cmake-${CMAKE_VERSION}.tar.gz
cd /opt/cmake-${CMAKE_VERSION}
./bootstrap
make -j 3
make install
rm -Rf /opt/cmake-${CMAKE_VERSION}
cd /opt/
git clone https://github.com/OpenZWave/open-zwave.git
ln -s open-zwave open-zwave-read-only
cd /opt/open-zwave
git checkout ${OPENZWAVE_VERSION_TAG}
make -j 3
cd /opt/
git clone https://github.com/domoticz/domoticz.git domoticz-src
cd /opt/domoticz-src
git checkout ${DOMOTICZ_VERSION_TAG}
cmake -DCMAKE_INSTALL_PREFIX=/opt/domoticz -DCMAKE_BUILD_TYPE=Release CMakeLists.txt
make -j 3
make install
mkdir -p /opt/domoticz/conf
rm -rf /opt/domoticz/.git
cd /opt/
tar -cvzf /output/domoticz-${DOMOTICZ_VERSION_TAG}.tar.gz ./domoticz
