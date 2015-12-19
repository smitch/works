#! /bin/bash

# contents: wireless lan setting
# ref http://denshikousaku.net/raspberry-pi-wifi-lan-usb

# echo "type ssid wpa passphrase"
# read wpa_arg
# wpa_passphrase ${wpa_arg}

echo edit /etc/wpa_supplicant/wpa_supplicant.conf as follow
cat<<EOF
sudo vim /etc/wpa_supplicant/wpa_supplicant.conf
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
        ssid="Your_SSID"
        psk=hogehogehogehogehogehogehogehogehoge
        key_mgmt=WPA-PSK
        proto=WPA2
        pairwise=CCMP
        group=CCMP
        priority=2
}
EOF

echo edit /etc/network/interfaces as follow
cat<<EOF
sudo vim /etc/network/interfaces
auto lo
iface lo inet loopback
# iface eth0 inet dhcp
iface eth0 inet static
address 192.168.0.121
netmask 255.255.255.0
gateway 192.168.0.1

auto wlan0
allow-hotplug wlan0
#iface wlan0 inet manual
iface wlan0 inet static
address 192.168.0.121
netmask 255.255.255.0
gateway 192.168.0.1

#wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp
EOF
