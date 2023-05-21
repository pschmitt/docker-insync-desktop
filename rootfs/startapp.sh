#!/usr/bin/env sh

stalonetray &

export HOME=/config
export QT_QPA_PLATFORM=xcb

exec insync start --no-daemon --debug 9 > /config/log/insync.log 2>&1
