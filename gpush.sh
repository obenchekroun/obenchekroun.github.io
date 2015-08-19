#!/bin/bash
git add --all
git commit -m "$*"
git push
terminal-notifier -title "Github repo updated !" -subtitle "Repo ready to use !" -message "Changes committed and pushed online"

