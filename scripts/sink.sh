current_sink=$(pactl info | grep 'Default Sink' | awk '{print $3}')
if [[ "$current_sink" == *"hdmi"* ]]; then
    echo "HDMI"
else
    echo "Analog"
fi
