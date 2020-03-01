#!/usr/bin/env bash

# Script to start all Lux HUD conky widgets.
# As you can see below all conky processes gets killed
# first before running since this is a collection that takes
# up the whole desktop. Feel free to modify this for you needs.
# Author: Mikael Luxwarp Carlsson mikael.m.carlsson@gmail.com https://codeiolo.org
# License: ISC.

# Let the desktop load for a few seconds before running
sleep 5

# Kill all current conky processes.
killall conky

# Starting all lux-hud conky widgets.
conky -c ~/.conky/lux-hud/lux-sysinfo.conf &
conky -c ~/.conky/lux-hud/lux-cpu.conf &
conky -c ~/.conky/lux-hud/lux-memory.conf &
conky -c ~/.conky/lux-hud/lux-disks.conf &
conky -c ~/.conky/lux-hud/lux-network.conf &
conky -c ~/.conky/lux-hud/lux-processes.conf &
conky -c ~/.conky/lux-hud/lux-log.conf &
#conky -c ~/.conky/lux-hud/lux-clock.conf &
