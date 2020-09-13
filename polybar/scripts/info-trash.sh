#!/bin/sh

case "$1" in
    --clean)
        rm -rf ~/.local/share/Trash/files
        rm -rf ~/.local/share/Trash/info
        mkdir ~/.local/share/Trash/files
        mkdir ~/.local/share/Trash/info
        ;;
    *)
        elements=`find ~/.local/share/Trash/files/ -maxdepth 1 | wc -l`
        size=`du -h --max-depth=1 ~/.local/share/Trash/ | grep 'Trash/files' | awk '{print $1}'`
        if [ "$elements" -le 1 ]; then
            echo "0"
        else
            echo -e `expr $elements - 1` "%{F#FAB795}$size%{F-}"
        fi
        ;;
esac
