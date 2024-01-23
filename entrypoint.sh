#!/bin/sh -l

echo "$1"

beginTime=$(date)

echo "Building frontend has begun"
apk add --update npm
npm ci
# npm install
npm run build --if-present
echo "Building frontend has finished"

endTime=$(date)
echo "beginTime=$beginTime" >> $GITHUB_OUTPUT
echo "endTime=$endTime" >> $GITHUB_OUTPUT