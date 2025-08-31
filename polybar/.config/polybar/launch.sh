#!/usr/bin/env sh

# Terminate already running polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Launch Polybar, passing the correct config file location
polybar -c "$DIR/config" main &
