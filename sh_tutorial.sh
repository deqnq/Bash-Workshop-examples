#!/bin/sh

echo -ne "What browser do you wanna use ?\nThese are the available browsers on your system\n"
BROWSERS="Firefox Brave Edge Chromium"
echo $BROWSERS


read INPUT
    case $INPUT in 
        firefox)    firefox ;;
        brave)      brave-browser ;;
        edge)       /opt/microsoft/msedge/msedge ;;
        chromium)   flatpak run com.github.Eloston.UngoogledChromium ;;
        *)          echo "Unknown browser. Make sure you entered the right browser" ;;
    esac
 
