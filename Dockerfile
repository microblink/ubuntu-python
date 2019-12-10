FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        curl \
        git \
        libcurl3-dev \
        libfreetype6-dev \
        libhdf5-serial-dev \
        libpng-dev \
        libzmq3-dev \
        pkg-config \
        python3.7-dev \
        python3-pip \
        software-properties-common \
        unzip \
        zip \
        zlib1g-dev \
        wget \
    && \
    rm -rf /var/lib/apt/lists/* && \
    ln -sf /usr/bin/python3.7 /usr/bin/python3 && \
    ln -s /usr/bin/python3 /usr/bin/python

RUN python -m pip install --no-cache-dir -U pip && \
    python -m pip install --no-cache-dir -U setuptools wheel
    
RUN python -m pip install --upgrade pip==19.3.1
RUN python -m pip install --upgrade setuptools
