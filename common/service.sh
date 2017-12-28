#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

# Disable backlight keys
if [ -e sys/devices/soc/leds-qpnp-10/leds/button-backlight/max_brightness ]; then
  echo 0 > sys/devices/soc/leds-qpnp-10/leds/button-backlight/max_brightness
fi

# Disable charging light
if [ -e sys/class/leds/red/max_brightness ]; then
  echo 0 > sys/class/leds/red/max_brightness
fi
