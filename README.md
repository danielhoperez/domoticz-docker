# domoticz-docker

There are a couple of docker images here:

## domoticz-build

This is meant to build domoticz and save the package to /output then this package can be used to create the actual domoticz docker 

it should be run like docker run -v [OUTPUT_DIR]:/output danielhoperez/domoticz-builder

The following env variables can be setup to control components version
* ENV DOMOTICZ_VERSION_TAG
* ENV CMAKE_VERSION
* ENV OPENZWAVE_VERSION_TAG

The default value is taken from the image built 
* ARG domoticz_version_tag=2020.1
* ARG cmake_version=3.17.0
* ARG openzwave_version_tag=master

of course due to changes in the codebase not necessarily changing this variables will guarantee a successful build
