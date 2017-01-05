#!/bin/sh

# terminate already running bar instances
# killall -q polybar
pkill -f "polybar laptop"

# wait until the processes have been shut down
while pgrep -f "polybar laptop" >/dev/null; do sleep 1; done

# export POLYBAR_MONITOR=${POLYBAR_MONITOR:-HDMI-1-2}

# Launch bar(s)
polybar laptop -c "$HOME/.config/polybar/laptop" "$@" &
for desktop in $(bspc query -m eDP-1-1 -D); do
  bspc config -d $desktop top_padding 22;
done

echo "Bars Launched..."
