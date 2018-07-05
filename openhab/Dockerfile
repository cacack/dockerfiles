FROM openhab/openhab:2.3.0-amd64-debian
MAINTAINER Chris Clonch <chris@theclonchs.com>

RUN apt-get update -y \
    && apt-get install --no-install-recommends -y \
      arping \
    && rm -rf /var/lib/apt/lists/*
