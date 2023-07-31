#!/bin/sh
### BEGIN INIT INFO
# Provides:assign-userdata
# Required-Start:
# Required-Stop:
# Should-Start:
# Default-Start:     5
# Default-Stop:
# Short-Description: assign userdata partition.
# Description:       assign userdata partition.
### END INIT INFO

PATH=/sbin:/usr/sbin:/bin:/usr/bin

do_start () {
    if [ -d "/userdata" ] ;
    then
        sudo chmod 0777 /userdata
    fi
}

case "$1" in
    start|"")
        do_start
        ;;
    restart|reload|force-reload)
        echo "Error: argument '$1' not supported" >&2
        exit 3
        ;;
    stop|status)
        # No-op
        ;;
    *)
        echo "Usage: assign-userdata.sh [start|stop]" >&2
        exit 3
        ;;
esac

: