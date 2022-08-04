#!/bin/sh

PLUGIN_PIPELINE_BUILD_CONTEXT=/tmp/build zmicro pipeline push zmicro_pipeline_examples_go $PWD --tags latest,v1 --registry docker-registry.zcorky.com