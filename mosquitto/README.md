# Eclipse Mosquitto v1.4.14 Docker Image

## Mount Points

Three mount points have been created in the image to be used for configuration,
persistent storage and logs.

```
/mosquitto/config
/mosquitto/data
/mosquitto/log
```


## Configuration

When running the image, the default configuration values are used.
To use a custom configuration file, mount a **local** configuration file to
`/mosquitto/config/mosquitto.conf`

```
docker run -it \
  -p 1883:1883 \
  -p 9001:9001 \
  -v <path-to-configuration-file>:/mosquitto/config/mosquitto.conf \
  cacack\mosquitto:1.4.15
```

Configuration can be changed to:

* persist data to `/mosquitto/data`
* log to `/mosquitto/log/mosquitto.log`

i.e. add the following to `mosquitto.conf`:
```
persistence true
persistence_location /mosquitto/data/

log_dest file /mosquitto/log/mosquitto.log
```
