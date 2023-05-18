#!/bin/bash

# Install required applications
sudo apt update
sudo apt install -y virtualbox vlc ffmpeg python3-pip curl git snapd mediainfo-gui libimage-exiftool-perl webhttrack kazam keepassxc

# Install pip packages
sudo -H pip3 install --upgrade youtube_dl Instalooter Instaloader pipenv nested-lookup internetarchive waybackpy

# Download additional files
cd ~/Desktop && curl -u osint:thought -O https://inteltechniques.com/osintbooksecure/vm-files.zip
unzip vm-files.zip -d /home/osint/Desktop/

# Configure VirtualBox settings
VBoxManage setextradata global GUI/SuppressMessages "remindAboutAutoCapture,remindAboutMouseIntegrationOn"
VBoxManage setextradata global VBoxInternal2/EfiGraphicsResolution 1920x1080

# Disable screen lock and file history in settings
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.privacy remember-recent-files false

# Configure Firefox settings
firefox_prefs="$HOME/.mozilla/firefox/*.default-release/prefs.js"
echo 'user_pref("browser.newtabpage.enabled", false);' >> $firefox_prefs
echo 'user_pref("browser.startup.homepage", "about:blank");' >> $firefox_prefs
echo 'user_pref("privacy.firstparty.isolate", true);' >> $firefox_prefs
echo 'user_pref("privacy.firstparty.isolate.restrict_opener_access", true);' >> $firefox_prefs
echo 'user_pref("privacy.clearOnShutdown.cookies", true);' >> $firefox_prefs
echo 'user_pref("signon.rememberSignons", false);' >> $firefox_prefs
echo 'user_pref("browser.search.suggest.enabled", false);' >> $firefox_prefs
echo 'user_pref("browser.urlbar.suggest.searches", false);' >> $firefox_prefs
echo 'user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);' >> $firefox_prefs

# Install Firefox extensions
firefox_extensions_dir="$HOME/.mozilla/firefox/*.default-release/extensions"
firefox_extensions=(
    "containers@mozilla.org"
    "uBlock0@raymondhill.net"
    "DownThemAll@downthemall.net"
    "downloadhelper@firefox"
    "screen-capture-recorder@freecodecs.com"
    "{cd6a20a2-8b7a-41d1-a891-8e27834d2a48}"
    "https-everywhere@eff.org"
    "jsonview@brh.numbera.com"
    "useragentswitcher@chrispederick.com"
    "onetab@addons.mozilla.org"
    "image_search_options@krishnanath"
    "resurrect-pages@anaran"
    "copy-selected-links@me.com"
    "keepassxc-browser@keepassxc.org"
)
for extension in "${firefox_extensions[@]}"; do
    cp -r ~/Documents/icons/$extension $firefox_extensions_dir
done

# Add custom scripts to PATH
mkdir -p ~/Documents/scripts
cp ~/Desktop/vm-files/scripts/* ~/Documents/scripts
echo 'export PATH="$HOME/Documents/scripts:$PATH"' >> ~/.bashrc

# Create application shortcuts
sudo cp ~/Desktop/vm-files/shortcuts/* /usr/share/applications/

# Clean up
rm ~/Desktop/vm-files.zip
rm -r ~/Desktop/vm-files

echo "Installation and configuration completed successfully."
