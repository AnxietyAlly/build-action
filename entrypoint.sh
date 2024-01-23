#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "Building frontend has begun"
npm ci
npm run build --if-present
"Building frontend has finished"

echo "time=$time" >> $GITHUB_OUTPUT

#   steps:
#     - run: echo "Building frontend has begun"
#     - uses: actions/checkout@v4
#     - run: npm ci
#     - run: npm run build --if-present
#     - run: echo "Building frontend has finished"