#!/bin/sh

# terminate already running bar instances
# killall -q polybar
pkill -f "polybar section"

# wait until the processes have been shut down
# while pgrep -x polybar >/dev/null; do sleep 1; done
while pgrep -f "polybar main" >/dev/null; do sleep 1; done

export POLYBAR_MONITOR=${POLYBAR_MONITOR:-HDMI-1-2}

# Launch bar(s)

polybar section-main-bg -c "$HOME/.config/polybar/sections" "$@" &
polybar section-time -c "$HOME/.config/polybar/sections" "$@" &
polybar section-sub-date -c "$HOME/.config/polybar/sections" "$@" &
polybar section-rofi-menus -c "$HOME/.config/polybar/sections" "$@" &
polybar section-window-tools -c "$HOME/.config/polybar/sections" "$@" &
polybar section-workspaces -c "$HOME/.config/polybar/sections" "$@" &
polybar section-sub-workspaces -c "$HOME/.config/polybar/sections" "$@" &
polybar section-wifi -c "$HOME/.config/polybar/sections" "$@" &
polybar section-sub-wifi -c "$HOME/.config/polybar/sections" "$@" &
polybar section-battery -c "$HOME/.config/polybar/sections" "$@" &
polybar section-volume -c "$HOME/.config/polybar/sections" "$@" &
polybar section-keyboard -c "$HOME/.config/polybar/sections" "$@" &



# configure bspwm padding for bars
for desktop in $(bspc query -m $POLYBAR_MONITOR -D); do
  bspc config -d $desktop top_padding 25;
  bspc config -d $desktop bottom_padding 5;
done

# sleep 0.5 && xdo lower -a polybar-main_HDMI-1-2
sleep 0.5 && xdo lower -a polybar-section-main-bg_HDMI-1-2
sleep 0.5 && xdo lower -a polybar-section-main-bg_HDMI-1-2
sleep 0.5 && xdo lower -a polybar-section-main-bg_HDMI-1-2

# ## Old bar (temp)
# polybar top -c "$HOME/.config/polybar/old-top" "$@" &
# for desktop in $(bspc query -m eDP-1-1 -D); do
#   bspc config -d $desktop top_padding 22;
# done

echo "Bars Launched..."
