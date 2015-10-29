#!/bin/bash

# Absolute path to this script. /home/user/bin/foo.sh
SCRIPT=$(readlink -f $0)
# Absolute path this script is in. /home/user/bin
SCRIPTPATH=`dirname $SCRIPT`

docker build -t rlecomte/erlang:latest .

docker run -v $SCRIPTPATH/day2:/scripts/ -ti rlecomte/erlang:latest
