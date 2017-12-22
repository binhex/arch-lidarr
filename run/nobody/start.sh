#!/bin/bash

# setup environment
export MONO_TLS_PROVIDER=legacy

# run app
/usr/bin/mono --debug /usr/lib/lidarr/Lidarr.exe -nobrowser -data=/config
