#!/bin/bash

for day in {0..372}
do
    commitNumber=$((1+RANDOM%3))
    for ((i=0; i <= commitNumber; i++))
    do
	commit=$RANDOM
        touch $commit
	git add .
	git commit -m "${commit}" --date "${day} days ago"
        rm $commit
    done
done
git push -u origin main

