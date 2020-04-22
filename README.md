# domoticz-docker

There are a couple of docker images here:

domoticz-build

This is meant to build domoticz and save the package to /output then this package can be used to create the actual domoticz docker 

it should be run like docker run -v [OUTPUT_DIR]:/output danielhoperez/domoticz-builder
