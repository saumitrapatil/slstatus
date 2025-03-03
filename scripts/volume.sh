vol=$(pamixer --get-volume)
isMuted=$(pactl list sinks | grep -A 10 'State: RUNNING' | grep 'Mute:' | awk '{print $2}')
if [[ $isMuted == "yes" ]]; then
    echo "Muted shh!!"
else
    echo "$vol"
fi
