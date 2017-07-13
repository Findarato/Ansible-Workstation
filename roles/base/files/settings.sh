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


#Custom Shortcut for Tilix
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0 name "Launch Tilix"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0 binding '<Primary><Alt>t'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybindings.custom0 command "tilix test"



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

