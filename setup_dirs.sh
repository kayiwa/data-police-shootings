#!/bin/bash

set -e

# Create data dir
if [ ! -d /home/kayiwa/accessyyzdata ] ; then
    echo "Creating /data directory"
    mkdir -p /home/kayiwa/accessyyzdata
else
    echo "Directory already exists!"
fi
