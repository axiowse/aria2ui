#!/bin/sh

/usr/bin/aria2c \
    --daemon \
    --continue=true \
    --dir=/opt/aria2/downloads \
    --enable-rpc=true \
    --rpc-allow-origin-all=true \
    --rpc-listen-all=true \
    --rpc-secret=$RPC_SECRET \
    --max-connection-per-server=5 \
    --rpc-listen-port=6800 && \
    nginx -g 'daemon off;'
