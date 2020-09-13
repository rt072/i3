#!/bin/sh

if pgrep -x "openvpn" > /dev/null
then
echo "VPN %{F#29D398}%{F-}"
else
echo "VPN %{F#F43E5C}%{F-}"
fi

# if pgrep -x "gedit" > /dev/null
