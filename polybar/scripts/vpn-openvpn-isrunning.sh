#!/bin/sh

if [ "$(pgrep openvpn)" ]; then
    echo "VPN %{F#859900}%{F-}"
else
    echo ""
fi
