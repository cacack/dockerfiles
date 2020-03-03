#!/usr/bin/env bash

VERSION='0.65.3-1'

docker build . \
  --tag "cacack/hugo:latest" \
  --tag "cacack/hugo:${VERSION}"

docker push "cacack/hugo:latest"
docker push "cacack/hugo:${VERSION}"
