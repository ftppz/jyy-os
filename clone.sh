#!/bin/bash

git clone https://git.nju.edu.cn/jyy/os-workbench.git
cd os-workbench

for branch in $(git branch -a | grep remotes | grep -v HEAD | grep -v main); do
	git branch --track "${branch#remotes/origin/}" "$branch"
done

git fetch --all 
