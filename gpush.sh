#!/bin/bash
git add --all
git commit -m "$*"
git push
terminal-notifier -title "Github repo updated !" -subtitle "Repo ready to use !" -message "Changes to the repo committed and pushed online"

