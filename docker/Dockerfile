#!/usr/bin/env -S sh -c 'docker build --rm -t kungfu.azurecr.io/mw-alpa:latest -f $0 .'
FROM nvidia/cuda:11.3.1-cudnn8-devel-ubuntu20.04

ENV TZ=Europe/London
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
        git \
        python3.9 \
        python3-pip

RUN rm /usr/bin/python3 && \
    ln -s /usr/bin/python3.9 /usr/bin/python3 && \
    ln -s /usr/bin/python3.9 /usr/bin/python

RUN pip install cupy-cuda113
RUN pip install alpa
RUN pip install jaxlib==0.3.22+cuda113.cudnn820 -f https://alpa-projects.github.io/wheels.html
RUN pip install \
        numpy==1.20 \
        scipy==1.10
