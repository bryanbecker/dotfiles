#!/bin/sh

# terminate already running bar instances
killall -q polybar

# wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar(s)
polybar top &

echo "Bars Launched..."
