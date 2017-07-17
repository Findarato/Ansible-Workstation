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





gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f use-theme-colors false
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f foreground-color '#B8A898'
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f background-color '#2A211C'
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f dim-color-set false
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f bold-color-set false
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f badge-color-set false
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f highlight-colors-set false
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f cursor-colors-set false
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f palette ['#000000', '#CC0000', '#1A921C', '#F0E53A', '#0066FF', '#C5656B', '#06989A', '#D3D7CF', '#555753', '#EF2929', '#9AFF87', '#FFFB5C', '#43A8ED', '#FF818A', '#34E2E2', '#EEEEEC']
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f visible-name 'Joe Terminal'
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f font 'Hack 12'
gsettings set com.gexperts.Tilix.window-state 128
gsettings set com.gexperts.Tilix.profiles.6194e50a-0bab-498b-aeee-b88a298a6f0f background-transparency-percent 4
gsettings set com.gexperts.Tilix.ProfilesList default '6194e50a-0bab-498b-aeee-b88a298a6f0f'


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

#Custom Shortcut for Tilix
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings ['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Launch Tilix'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Primary><Alt>t'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'tilix'


gsettings set org.gnome.shell. enabled-extensions ['background-logo@fedorahosted.org', 'nvidiatemp@baco', 'TopIcons@phocean.net', 'user-theme@gnome-shell-extensions.gcampax.github.com','calc@patapon.info']
gsettings set org.gnome.shell enabled-extensions ['TopIcons@phocean.net', 'user-theme@gnome-shell-extensions.gcampax.github.com','calc@patapon.info']