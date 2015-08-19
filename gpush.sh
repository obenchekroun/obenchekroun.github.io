#!/bin/bash

function notifyDone () { command="$@"; terminal-notifier -title "obenchekroun.github.io Cydia Repo updated" -message "Done with '$command'!" -subtitle "The repo is ready to use trough Cydia" -activate com.apple.Terminal; }
function notifyError () { command="$@"; terminal-notifier -title "obenchekroun.github.io Cydia Repo update ERROR!" -message "'$command' exited with error!" -activate com.apple.Terminal; }
function wn () { ($@ && notifyDone $@) || notifyError $@; }
function n () { $@; notifyDone $@;}

git add --all
git commit -m "$*"
wn git push

