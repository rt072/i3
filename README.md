## i3 wm - tiling window manager

### Installation

#### In Archlinux
```bash
yay -S i3-wm compton
```

#### In Ubuntu/Debian
```bash
sudo apt install i3 compton
```

```bash
cd /home/$USER/.config/i3
git clone https://github.com/rt072/i3.git
mv polybar/ /home/$USER/.config/
```
And add to *.xinitrc*
```
exec i3
```


### Screenshots
Terminals
![screenshots](./.screenshots/desktop-0.png)

Desktop with spacefm and terminal.
![screenshot](./.screenshots/desktop-1.png)

* Tags list ![screenshot](./.screenshots/tags.png)
* Trash info. Display how many items in Trash. Right click to clear. ![screenshot](./.screenshots/trash.png)
* List windows ![screenshot](./.screenshots/windows-list.png)
* System info. CPU usage, RAM used, Free space in root dir, updates availalble, VPN ON/OFF status, wifi SSID info, Battery info, Volume info, Date, Keyboard layout and Systray.
    ![screenshot](./.screenshots/info.png)


