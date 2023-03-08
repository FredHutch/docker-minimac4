FROM ubuntu:20.04

RUN apt update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt install -y git make cmake python3 python3-pip
RUN pip install cget

RUN cd /usr/local && \
    git clone https://github.com/statgen/Minimac4.git && \
    cd Minimac4 && \
    git checkout v4.1.2 && \
    bash install.sh && \
    ln -s $PWD/release-build/minimac4 /usr/local/bin/ && \
    minimac4 --help
