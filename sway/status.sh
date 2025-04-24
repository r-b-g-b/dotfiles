date_formatted=$(date "+%a %F %H:%M")

charging="?"
while IFS= read -r line; do
  if [ "$line" = "Charging" ]; then
    charging="🔌"
  elif [ "$line" = "Discharging" ]; then
    charging="🔋"
  fi
done < /sys/class/power_supply/BAT1/status

capacity=$(cat /sys/class/power_supply/BAT1/capacity)
# battery_life=$(python3 ~/.config/sway/battery.py)
battery_life=relax
volume=$(wpctl get-volume '@DEFAULT_SINK@' | python3 ~/.config/sway/audio.py)

network=$(nmcli -t -f active,ssid dev wifi | grep "^yes" | cut -d':' -f2)

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo ${network} "|" ${charging} ${capacity}% ${battery_life} "|" ${volume} "|" $date_formatted "| "
