#!/bin/bash

# needed files: client.sh, definitions, network, redhat-network

if [ $# -eq 0 ]; then
    echo "No arguments provided. Please specify network interface you wish to get IP for."
    exit 1
fi

. ./network

shownetwork $@
