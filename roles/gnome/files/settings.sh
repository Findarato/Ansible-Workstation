#!/bin/bash

# Set various system options.
# gsettings set org.gnome.desktop.session idle-delay "uint32 300"
# gsettings set org.gnome.settings-daemon.plugins.power idle-dim true
# gsettings set org.gnome.desktop.screensaver lock-enabled true
# gsettings set org.gnome.desktop.screensaver lock-delay "uint32 0"
# gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend true
# gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:swapcaps']"
# gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/EnablePrimaryPaste': <0>}"
# gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
# gsettings set org.compiz.integrated show-hud "['']"
# gsettings set com.canonical.indicator.sound visible true
# dconf write /org/compiz/profiles/unity/plugins/unityshell/show-launcher "'<Control><Super>'"



gsettings set org.gnome.settings-daemon.plugins.media-keys terminal '<Super>t'
gsettings set org.gnome.settings-daemon.plugins.media-keys home '<Super>e'

# Bluetooth thing

gsettings set org.gnome.shell had-bluetooth-devices-setup true


# Confermed to work

#Laptop
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic true
gsettings set org.gnome.settings-daemon.plugins.color night-light-last-coordinates (41.616199999999999, -87.048900000000003)
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 20.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 6.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature uint32 4000
gsettings set org.gnome.desktop.peripherals.touchpad send-events 'enabled'
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true
gsettings set org.gnome.desktop.peripherals.touchpad left-handed 'mouse'
gsettings set org.gnome.desktop.peripherals.touchpad click-method 'default'
gsettings set org.gnome.desktop.peripherals.touchpad speed 0.0
gsettings set org.gnome.desktop.peripherals.touchpad tap-and-drag true
gsettings set org.gnome.desktop.peripherals.touchpad edge-scrolling-enabled false
org.gnome.desktop.peripherals.touchpad disable-while-typing true

# #Custom Shortcut for Tilix
# gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings ['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch Tilix'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Primary><Alt>t'
# gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'tilix'


gsettings set org.gnome.shell. enabled-extensions ['background-logo@fedorahosted.org', 'nvidiatemp@baco', 'TopIcons@phocean.net', 'user-theme@gnome-shell-extensions.gcampax.github.com','calc@patapon.info']
gsettings set org.gnome.shell enabled-extensions ['TopIcons@phocean.net', 'user-theme@gnome-shell-extensions.gcampax.github.com','calc@patapon.info']



# SETTINGS FROM ublue
# https://github.com/castrojo/ublue/

dconf write /org/gnome/desktop/thumbnail-cache/maximum-age "180"
dconf write /org/gnome/desktop/thumbnail-cache/maximum-size "512"
dconf write /org/gnome/desktop/thumbnailers/disable "@as []"
dconf write /org/gnome/desktop/thumbnailers/disable-all "false"