#!/bin/sh

echo "=============================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${ACTOR_EMAIL}"
git config --global --add safe.directory /github/workspace

python /usr/bin/feed.py

git add .
git commit -m "Update Feed"
git push --set-upstream origin main


echo "=============================="
