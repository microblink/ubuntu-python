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
        openssh-server \
    && \
    rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1

RUN python -m pip install pip==20.3.3
RUN python -m pip install setuptools==51.3.3
RUN python -m pip install wheel==0.35

RUN printf "[global]\nindex-url = http://pypi.microblink.com/\ntrusted-host = pypi.microblink.com" > /etc/pip.conf


