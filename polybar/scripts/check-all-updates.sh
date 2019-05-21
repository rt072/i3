#!/bin/sh
#source https://github.com/x70b1/polybar-scripts


if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
if ! updates_aur=$(trizen -Su --aur --quiet | wc -l); then
    updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))
echo $updates > /tmp/updates.txt
file='/tmp/updates.txt'
upd=`head -n 1 /tmp/updates.txt`

if [ -s "$file" ]; then
    echo " $upd"
else
    echo " 0"
fi
