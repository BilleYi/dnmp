#!/usr/bin/env bash
set -e

exec bash -c \
    "exec varnishd \
    -a :80 \
    -T localhost:6082 \
    -F \
    -f /etc/varnish/default.vcl \
    -S /etc/varnish/secret  \
    -s malloc,512m \
    -p default_ttl=3600 -p default_grace=3600"
