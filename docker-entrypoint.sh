#!/bin/sh
set -e

if [ $(id -u) -eq 0 ]; then
    exec su-exec ${USERNAME} "$0" "$@"
fi

exec "$@"