#!/usr/bin/env bash

function hitEnter() {
  echo "Hit enter"
  read okay
}

echo "Check status of installed Atom packages and "
echo "- run 'apm star --installed' on another machine."
echo "- run 'apm install --starred' on this machine."
hitEnter

open "$HOME/Applications/Alfred 2.app"
echo "Alfred: sync settings from dropbox"
hitEnter

open "/System/Library/PreferencePanes/Expose.prefPane/"
echo "Expose:"
echo "Disable automatic rearrange"
echo "hotcorner: upper-left screensaver"
hitEnter

open "/System/Library/PreferencePanes/UniversalAccessPref.prefPane/"
echo "Accessibility:"
echo "Use scroll gesture to zoom"
echo "Mouse & Trackpad: Enable dragging / three finger drag
hitEnter

open "/System/Library/PreferencePanes/Dock.prefPane/"
echo "Dock:"
echo "set sizes"
echo "double-click a window's title bar to minimize"
hitEnter

open "/System/Library/PreferencePanes/Sound.prefPane/"
echo "Sound:"
echo "disable user interface sounds"
echo "set alert volume to ~half"
echo "enable show volume in menubar"
hitEnter

open "/System/Library/PreferencePanes/Displays.prefPane/"
echo "Displays:"
echo "more space"
hitEnter

open "/System/Library/PreferencePanes/Keyboard.prefPane"
echo "Keyboard:"
echo "Key Repeat: Fast"
echo "Delay until repeat: short"
echo "Keyboard access: all controls"
hitEnter


echo "Sign in to Facebook"
open "https://facebook.com"
hitEnter

open "$HOME/Applications/Google Chrome.app"
echo "Chrome:"
echo "chrome://flags/ -- Enable the new avatar menu"

echo "For every profile:"
echo "click to play"

hitEnter

open "$HOME/Applications/Flowdock.app"
hitEnter

open "$HOME/Applications/Skype.app"
hitEnter

open "$HOME/Applications/SourceTree.app"
hitEnter

open "$HOME/Applications/VLC.app"
hitEnter

open "$HOME/Applications/Spotify.app"
hitEnter

open "$HOME/Applications/Texpad.app"
echo "register"
echo "auto typeset"
hitEnter

open "$HOME/Applications/Mendeley Desktop.app"
hitEnter

open ~/Applications/Evernote.app
echo "disable context"
hitEnter

open ~/Applications/Skitch.app
echo "login to evernote"
echo "enable helper"
echo "save new: ask"
echo "notebook: skitch"
echo "sync: 5min"

hitEnter

open ~/Applications/Telegram.app
hitEnter

open ~/Applications/Caffeine.app
hitEnter

open ~/Applications/Cinch.app
hitEnter

open /Applications/Messages.app
hitEnter

open /Applications/Maps.app
hitEnter

open /Applications/Calendar.app
hitEnter


open /System/Library/PreferencePanes/Accounts.prefPane/
hitEnter

open /Applications/Notes.app
hitEnter

open /System/Library/PreferencePanes/Notifications.prefPane/
echo "disable all"
hitEnter


open "/System/Library/PreferencePanes/Security.prefPane/"
echo "Require password: 5 seconds"
echo "Advanced -> require an administrator password"
echo "Enable filevault, this will restart"
