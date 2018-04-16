#!/bin/bash

# This script starts the application

SRC_DIR=$(cd "$(dirname "$0")"; pwd -P)
. "$SRC_DIR"/functions.sh

old_server_process=tmp/pids/server.pid
if [ -e $old_server_process ]; then
  rm $old_server_process
fi

rails server --binding=0.0.0.0 --port=$PORT
