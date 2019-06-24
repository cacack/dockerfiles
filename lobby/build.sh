#!/usr/bin/env bash

VERSION=0.4.0

docker build . \
  --tag="cacack/lobby:latest" \
  --tag="cacack/lobby:${VERSION}"
