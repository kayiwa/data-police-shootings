#!/bin/bash

set -e

# Create data dir
if [ ! -d /Users/kayiwa/policeshootingsdata ] ; then
    echo "Creating /data directory"
    mkdir -p /Users/kayiwa/policeshootingsdata
else
    echo "Directory already exists!"
fi
