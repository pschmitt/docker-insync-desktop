#!/usr/bin/env sh

take-ownership /data

if [ ! -e /config/Insync ]
then
  ln -sf /data /config/Insync
fi
