#!/bin/sh

if [ -z "$1" ] || [ "x$1" = "xstart" ]; then

    mkdir -p /usr/local
    for i in bin etc home lib sbin share; do
        mkdir -p /usr/local/$i
    done

    if [ ! -f /usr/local/etc/timezone ]; then
        echo 'CET-1CEST,M3.5.0,M10.5.0' > /usr/local/etc/timezone
    fi

fi

