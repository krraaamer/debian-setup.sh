#!/bin/bash
# Debian 12 (Bookworm) setup script
# Use Gnome Live image to test/install
# Run this script for setup

gsettings set org.gnome.desktop.privacy hide-identity true
gsettings set org.gnome.desktop.privacy remember-app-usage false
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.privacy recent-files-max-age 0
gsettings set org.gnome.desktop.privacy report-technical-problems false
gsettings set org.gnome.desktop.privacy send-software-usage-stats false
gsettings set org.gnome.desktop.privacy show-full-name-in-top-bar false

gsettings set org.gnome.desktop.search-providers disable-external true
gsettings set org.freedesktop.Tracker3.Miner.Files crawling-interval -2
gsettings set org.freedesktop.Tracker3.Miner.Files enable-monitors false
gsettings set org.freedesktop.Tracker3.Miner.Files index-on-battery false

gsettings set org.gnome.system.location enabled false
gsettings set org.gnome.system.location max-accuracy-level 'country'
gsettings set org.gnome.desktop.datetime automatic-timezone false

gsettings set org.gnome.desktop.privacy usb-protection true
gsettings set org.gnome.desktop.privacy usb-protection-level 'lockscreen'
gsettings set org.gnome.desktop.media-handling automount false
gsettings set org.gnome.desktop.media-handling automount-open false
gsettings set org.gnome.desktop.media-handling autorun-never true

gsettings set org.gnome.online-accounts whitelisted-providers "['']"

gsettings set org.gnome.desktop.privacy old-files-age 30
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true

gsettings set org.gnome.desktop.interface color-scheme 'default'
gsettings set org.gnome.desktop.background color-shading-type 'solid'
gsettings set org.gnome.desktop.background picture-opacity 100
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#30343d'
gsettings set org.gnome.desktop.background secondary-color '#30343d'
gsettings set org.gnome.desktop.background show-desktop-icons true

gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.SessionManager auto-save-session false

gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.interface enable-hot-corners false

gsettings set org.gnome.mutter dynamic-workspaces true
gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsettings set org.gnome.shell.window-switcher current-workspace-only true
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

gsettings set org.gnome.nautilus.window-state maximized true
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'medium'
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'date_modified']"
gsettings set org.gnome.nautilus.list-view default-zoom-level 'medium'
gsettings set org.gnome.nautilus.list-view use-tree-view false

gsettings set org.gnome.nautilus.preferences show-create-link true
gsettings set org.gnome.nautilus.preferences show-delete-permanently true

gsettings set org.gnome.nautilus.preferences fts-enabled false

rm -rf ~/.cache/thumbnails
gsettings set org.gnome.desktop.thumbnailers disable-all true

gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false
gsettings set org.gnome.settings-daemon.plugins.power idle-dim true
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 3600
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 600
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'

gsettings set org.gnome.desktop.screensaver picture-options 'none'
gsettings set org.gnome.desktop.screensaver primary-color '#36454F'
gsettings set org.gnome.desktop.screensaver secondary-color '#36454F'
gsettings set org.gnome.desktop.screensaver show-full-name-in-top-bar false
gsettings set org.gnome.desktop.screensaver lock-enabled false

gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds false
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gtk.Settings.FileChooser clock-format '12h'
gsettings set org.gtk.Settings.FileChooser date-format 'regular'
gsettings set org.gtk.gtk4.Settings.FileChooser clock-format '12h'
gsettings set org.gtk.gtk4.Settings.FileChooser date-format 'regular'

gsettings set org.gnome.desktop.sound event-sounds false
gsettings set org.gnome.desktop.sound input-feedback-sounds false

gsettings set org.gnome.desktop.notifications show-banners true
gsettings set org.gnome.desktop.notifications show-in-lock-screen false

gsettings set org.gnome.desktop.peripherals.keyboard numlock-state true
gsettings set org.gnome.desktop.peripherals.keyboard remember-numlock-state true

gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Super>r', '<Alt>F2']"

gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false

gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad tap-and-drag true
gsettings set org.gnome.desktop.peripherals.touchpad two-finger-scrolling-enabled true

gsettings set org.gnome.settings-daemon.peripherals.touchscreen orientation-lock true

gsettings set org.gnome.Terminal.Legacy.Settings theme-variant 'light'
gsettings set org.gnome.Terminal.Legacy.Settings new-terminal-mode 'tab'

sudo apt install \
  chromium remmina \
  libreoffice xournalpp \
  vlc cmus \
  pwgen \
  python3-pandas

sudo apt remove aisleriot anthy cheese evolution five-or-more four-in-a-row gnome-2048 gnome-calendar gnome-chess gnome-contacts gnome-klotski gnome-mahjongg gnome-maps gnome-mines gnome-music gnome-nibbles gnome-robots gnome-sound-recorder gnome-software gnome-sudoku gnome-taquin gnome-tetravex gnome-tetravex gnome-weather goldendict hdate-applet hitori iagno kasumi lightsoff mlterm mlterm-common mlterm-tiny mozc-utils-gui quadrapassel rhythmbox shotwell simple-scan swell-foop synaptic tali thunderbird totem transmission-gtk xiterm+thai

sudo apt autoremove

gsettings set org.gnome.desktop.app-folders folder-children "[]"
gsettings set org.gnome.shell app-picker-layout "[]"
