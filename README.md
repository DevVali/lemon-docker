# Lemon app skeleton with Docker

This repository contains advanced app skeleton for building via Docker.

## Running locally

```
$ docker build . -t devvali/lemon-docker:latest

$ docker run --rm -p 8000:80 -v ${pwd}:/app devvali/lemon-docker:latest
```

The application will be served at `http://localhost:8000`. [Docker](https://www.docker.com/) is required for successful installation.

## TODO

- [ ] Docker-compose
- [ ] Reflect changes real-time inside a container
