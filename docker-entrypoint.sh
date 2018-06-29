#!/bin/sh

set -e

exec jinja2 $PLUGIN_TEMPLATE $PLUGIN_DATA > $PLUGIN_OUTFILE
