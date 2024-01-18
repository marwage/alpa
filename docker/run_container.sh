#!/bin/bash

docker rm alpa-pytorch

docker run \
    --gpus all \
    --name alpa-pytorch \
    -i \
    -t kungfu.azurecr.io/mw-alpa:latest
