#!/usr/bin/env sh

export HOME=/config
# export DISPLAY=:0
echo "USER ID: $(id)"

if [ ! -e /config/Insync ]
then
  ln -sf /data /config/Insync
fi

take-ownership /config
take-ownership /data

export QT_QPA_PLATFORM=xcb

stalonetray &

exec insync start --no-daemon --debug 9 > /config/log/insync.log 2>&1
