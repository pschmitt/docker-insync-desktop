#!/usr/bin/env bash

cd "$(cd "$(dirname "$0")" >/dev/null 2>&1; pwd -P)" || exit 9

CMD=("$@")

if [[ -z "${CMD[*]}" ]]
then
  CMD=("bash")
fi

docker exec -it insync "${CMD[@]}"
