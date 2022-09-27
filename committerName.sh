#!/bin/sh

commit_id = $(cat commit.txt)
committername = $(git show -s --format='%cn' $commit_id)

echo $committername