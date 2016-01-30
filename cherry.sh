#!/bin/bash

set -e

cd ~/mallow/frameworks/base

git branch -D m
git checkout -b m

git fetch http://moepda@gerrit.dirtyunicorns.com/android_frameworks_base refs/changes/80/22780/1 && git cherry-pick FETCH_HEAD

cd ~/mallow
exit
