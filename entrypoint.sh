#!/bin/sh -l

echo "$1"

echo "Building frontend has begun"
apk add --update npm
# npm ci
npm install
npm run build --if-present
echo "Building frontend has finished"

time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT