# beersmith2

Dockerized version of [BeerSmith2](http://beersmith.com).

## Requirements

I needed to allow remote access to X11:

```
xhost +
```

Then create a directory to allow BeerSmith data to persist:

```
mkdir ${PWD}/data
```

## Usage

```
docker run --rm -it \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ${PWD}/data:/home/beersmith/.beersmith2 \
  -e DISPLAY=unix$DISPLAY \
  cacack/beersmith2
```
