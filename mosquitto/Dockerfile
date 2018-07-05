FROM alpine:3.7
MAINTAINER Chris Clonch <chris@theclonchs.com>

LABEL Description="Eclipse Mosquitto MQTT Broker"
ENV MOSQUITTO_VERSION=1.4.15-r0

RUN apk --update --no-cache add mosquitto=$MOSQUITTO_VERSION \
    && mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log \
    && cp /etc/mosquitto/mosquitto.conf /mosquitto/config \
    && chown -R mosquitto:mosquitto /mosquitto

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
