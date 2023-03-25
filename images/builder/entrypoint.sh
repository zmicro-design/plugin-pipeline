#!/bin/bash

if [ "$DEBUG" = "true" ]; then
  sleep infinity
  exit 0
fi

echo "start to run build ..."
zmicro pipeline build

