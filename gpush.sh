#!/bin/bash
git add --all
git commit -m "$*"
git push
terminal-notifier -title "Github repo update done !" -message "See terminal for potential error"

