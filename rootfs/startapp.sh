#!/usr/bin/env sh

stalonetray &

export HOME=/config
export QT_QPA_PLATFORM=xcb

(sleep 10 && insync show) &

exec insync start --no-daemon --debug 9 > /config/log/insync.log 2>&1
