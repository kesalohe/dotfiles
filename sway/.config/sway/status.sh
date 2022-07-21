#!/bin/env bash

# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %H:%M")

# https://stackoverflow.com/questions/24710521/calculating-average-value-of-temp-from-lm-sensors-using-bash-script
# Get average CPU temperature
cpu_temp=$(sensors coretemp-isa-0000 | awk '/^Core /{++r; gsub(/[^[:digit:]]+/, "", $3); s+=$3} END{print s/(10*r) "°C"}')

# Get average GPU temperature
gpu_temp=$(sensors amdgpu-pci-0300 -j | jq '.["amdgpu-pci-0300"].edge.temp1_input')

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo "CPU: ${cpu_temp%.*}°C | GPU: ${gpu_temp%.*}°C | $date_formatted"

