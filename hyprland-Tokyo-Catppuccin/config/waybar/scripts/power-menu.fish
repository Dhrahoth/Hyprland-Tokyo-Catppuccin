#!/usr/bin/env fish

# Power menu using wofi
set chosen (printf " Shutdown\n Reboot\n Lock" | wofi --dmenu --prompt "Power Menu" | awk '{print $2}')

switch $chosen
    case Shutdown
        systemctl poweroff
    case Reboot
        systemctl reboot
    case Lock
        hyprlock
end
