#!/usr/bin/env bash

VERSION='2.4.0-4'

docker build . \
  --tag "cacack/openhab:latest" \
  --tag "cacack/openhab:${VERSION}"
