# arcade-kiosk

Before building the image make sure to update the CLH arcade games repo from the root of this repo:

## Pre-build

```
git clone https://github.com/CommandLineHeroes/clh-arcade-games.git
```

or if you have already cloned it:

```
cd clh-arcade-games && git pull
```

## Build

```
podman build -t arcade-kiosk -f ./Containerfile
```

## Push

```
podman push arcade-kiosk:latest quay.io/jsprague/arcade-kiosk:latest
```
