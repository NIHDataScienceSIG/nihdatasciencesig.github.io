#!/bin/bash
hugo
git add public
git commit -m 'update public'
git subtree split --prefix public -b master1
git push -f origin master1:master
git branch -D master1

