#!/bin/bash
DIR=`dirname $0`

# Generate blog
hexo clean
hexo generate
sleep 1

# Deploy
hexo deploy
sleep 3

# Push hexo code
git add .
current_date=`date "+%Y-%m-%d %H:%M:%S"`
git commit -m "Blog updated: $current_date"

sleep 2
git push backup hexo

echo "=====>Finish!<====="
