# command -v guard: exec on a missing binary would kill the login shell
# and put agetty's autologin into a tight respawn loop.
if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = "1" ] \
   && command -v start-hyprland >/dev/null 2>&1; then
    # dbus-run-session: no session bus otherwise (runit doesn't provide
    # one) — waybar, swaync, portals and notify-send all need it
    exec dbus-run-session start-hyprland
fi
