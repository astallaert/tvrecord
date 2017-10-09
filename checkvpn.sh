#!/bin/bash

wget -q --tries=10 --timeout=20 --spider http://google.com > /dev/null
if [[ $? -eq 0 ]]; then
        echo "Online"
else
        echo "Offline" && systemctl stop openvpn && systemctl start openvpn && exit;
fi
