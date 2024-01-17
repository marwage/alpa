#!/usr/bin/env -S sh -c 'docker build --rm -t kungfu.azurecr.io/mw-alpa:latest -f $0 .'

FROM nvidia/cuda:11.3.1-cudnn8-devel-ubuntu20.04

RUN apt-get update && \
    apt-get install -y \
        git \
        python3.9

RUN pip install -y \
        alpa \
        jaxlib==0.3.22+cuda113.cudnn820 -f https://alpa-projects.github.io/wheels.html
