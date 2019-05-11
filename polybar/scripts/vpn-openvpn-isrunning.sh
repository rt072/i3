#!/bin/sh

if pgrep -x "openvpn" > /dev/null
then
echo "VPN %{F#859900}%{F-}"
else
echo "VPN %{F#DC322F}%{F-}"
fi

# if pgrep -x "gedit" > /dev/null