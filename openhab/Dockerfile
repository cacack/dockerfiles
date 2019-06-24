FROM openhab/openhab:2.4.0-amd64-debian
MAINTAINER Chris Clonch <chris@theclonchs.com>

RUN apt-get update -y \
    && apt-get dist-upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'uucphost:x:998:openhab' >> /etc/group
