FROM golang:1.8

RUN echo "deb http://emdebian.org/tools/debian/ jessie main" >> /etc/apt/sources.list
RUN curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | apt-key add -

RUN dpkg --add-architecture armel && \
    apt-get update && \
    apt-get install -y crossbuild-essential-armel
