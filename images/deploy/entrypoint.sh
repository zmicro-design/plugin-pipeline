#!/bin/bash

if [ "$DEBUG" = "true" ]; then
  sleep infinity
  exit 0
fi

echo "start to run deploy ..."
zmicro pipeline deploy

