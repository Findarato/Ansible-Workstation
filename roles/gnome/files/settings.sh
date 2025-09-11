#!/usr/bin/env bash

## Title: settings.sh
## Description: GNOME settings configuration script
## Author: Joseph Harry <findarato@gmail.com>
## Date: 2025-09-11 08:59:08



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


gsettings set org.gnome.shell. enabled-extensions ['background-logo@fedorahosted.org', 'nvidiatemp@baco', 'TopIcons@phocean.net', 'user-theme@gnome-shell-extensions.gcampax.github.com','calc@patapon.info']
gsettings set org.gnome.shell enabled-extensions ['TopIcons@phocean.net', 'user-theme@gnome-shell-extensions.gcampax.github.com','calc@patapon.info']

