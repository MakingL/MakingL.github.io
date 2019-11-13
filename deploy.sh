#!/bin/bash
DIR=`dirname $0`

# Generate blog
# hexo clean ; hexo generate; hexo deploy
# sleep 5

# Deploy
# hexo deploy
# sleep 5

# Push hexo code
git add .
current_date=`date "+%Y-%m-%d %H:%M:%S"`
git commit -m "updated: $current_date"

sleep 5
git push origin backup

echo "=====>Finish!<====="
