#!/usr/bin/env bash

docker run -it --rm \
    -e ADDRESS=<dashcam IP address> \
    -v $(pwd)/tmp:/recordings \
    -e DRY_RUN=1 \
    -e CRON=0 \
    -e RUN_ONCE=1 \
    -e VERBOSE=1 \
    --name blackvuesync \
    ghcr.io/idanoo/blackvuesync:latest
