#!/usr/bin/dumb-init /bin/bash

# setup environment
export XDG_CONFIG_HOME="/config/xdg"

# run app
/usr/lib/lidarr/bin/Lidarr -nobrowser -data=/config
