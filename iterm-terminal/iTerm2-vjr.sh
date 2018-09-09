#!/usr/bin/env bash

#Script to open a terminal using Sublime Text shortcut: `command + shift + t`
#Use the Package [Terminal]() from packagecontrolIO https://packagecontrol.io/packages/Terminal


osascript -e 'tell application "Sublime Text" to activate' -e 'tell application "System Events" to tell process "Sublime Text" to keystroke "p" using {shift down, command down}' -e 'tell application "System Events" to tell process "iTerm" to keystroke "Copy Path\n"' -e 'tell application "System Events" to tell process "iTerm" to key code 36'; osascript -e 'tell application "iTerm" to activate' -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
sleep 2
osascript -e 'tell application "System Events" to tell process "iTerm" to keystroke "cd $(pbpaste|rev|cut -d'/' -f2-|rev)\n"'
