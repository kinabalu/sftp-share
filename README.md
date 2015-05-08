# kinabalu/sftp-share Dockerfile

Originally [luzifer/sftp-share](https://github.com/luzifer/sftp-share) with a few mods for our needs including:

* changing the ownership of /data to USER (/data usually exists because of the VOLUME command and is owned by root)
* even if user exists, the start.sh will still run sshd

This repository contains **Dockerfile** of sftp-share for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/kinabalu/sftp-share/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

- [ubuntu](https://registry.hub.docker.com/_/ubuntu/)

## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/kinabalu/sftp-share/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull kinabalu/sftp-share`

## Usage

To launch it and have your share listen on port 2022, just type:

```
docker run -d -p 2022:22 -E HOME=/home/myuser -e USER=myuser -e PASS=myverysecretpassword kinabalu/sftp-share
```
