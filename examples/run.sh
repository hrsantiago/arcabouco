#!/bin/sh
SCRIPT=$(realpath -s $0)
BASEDIR=$(dirname $SCRIPT)

# Run list
cd $BASEDIR/list/scripts
$BASEDIR/../build/examples/list/example_list /stestelista /lTesteLista /aestatisticas

# Run tree
# TODO
