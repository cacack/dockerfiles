FROM alpine:3.11

ENV HUGO_VERSION 0.65.3

RUN set -x \
  && apk add --no-cache --update \
    bash \
    curl \
    openssh-client \
    rsync \
  && curl -L https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | tar xvz -C /tmp \
  && mv /tmp/hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/local/bin/hugo \
  && rm -rf /tmp/hugo_${HUGO_VERSION}_Linux_amd64/

EXPOSE 1313
