#!/bin/sh

set "" \
    --daemon \
    --continue=true \
    --enable-rpc=true \
    --rpc-allow-origin-all=true \
    --rpc-listen-all=true \
    --max-connection-per-server=5 \
    --rpc-listen-port=6800

if [ ${#RPC_SECRET} -gt 0 ]; then
    set -- "$@" --rpc-secret=$RPC_SECRET
fi

/usr/bin/aria2c $@ && nginx -g 'daemon off;'
