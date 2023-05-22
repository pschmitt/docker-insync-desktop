#!/usr/bin/env bash

cd "$(cd "$(dirname "$0")" >/dev/null 2>&1; pwd -P)" || exit 9

docker-compose exec insync su app -s /bin/bash -c "insync $*"
