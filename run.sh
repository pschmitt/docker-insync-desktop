#!/usr/bin/env bash

cd "$(cd "$(dirname "$0")" >/dev/null 2>&1; pwd -P)" || exit 9

docker rm -f insync

docker run --rm -it \
  --name insync \
  -p 5800:5800 \
  -p 5900:5900 \
  -v $PWD/config:/config \
  -v $PWD/data:/data \
  pschmitt/insync-desktop
