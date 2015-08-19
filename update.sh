#!/bin/bash
./remove.sh
./packages.sh
./push.sh
terminal-notifier -title "Updating repo done!" -message "New packages created & the list of packages has been updated"
