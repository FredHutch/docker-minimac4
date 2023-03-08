FROM ubuntu:20.04

RUN apt update
RUN apt install -y git make cmake

RUN cd /usr/local && \
    git clone https://github.com/statgen/Minimac4.git && \
    cd Minimac4 && \
    git checkout v4.1.2 && \
    bash install.sh && \
    minimac4 --help
