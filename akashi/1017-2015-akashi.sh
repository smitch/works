#! /bin/bash

# contents:wireshark setting to capture packets by non super user

sudo setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap

sudo getcap /usr/bin/dumpcap /usr/bin/dumpcap = cap_net_admin, cap_net_raw+eip
