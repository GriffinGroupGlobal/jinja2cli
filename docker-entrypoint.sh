#!/bin/sh

set -e

if [ $(id -u) -eq 0 ]; then
    exec su-exec ${USERNAME} jinja2 $PLUGIN_TEMPLATE $PLUGIN_DATA > $PLUGIN_OUTFILE
fi

exec jinja2 $PLUGIN_TEMPLATE $PLUGIN_DATA > $PLUGIN_OUTFILE
