#!/bin/bash

# (will prompt for password)
curl -u 'hchiam' https://api.github.com/user/repos -d '{"name":"learning-cucumber", "description":""}'
git remote add origin 'git@github.com:hchiam/learning-cucumber.git'
git add .
git commit -m "Set up repo"
git remote set-url origin https://github.com/hchiam/learning-cucumber.git
git push --set-upstream origin master
echo; echo -------; echo;
git status

# This file was first created using the Yeoman generator
#  generator-hchiam-learning:
#  https://www.npmjs.com/package/generator-hchiam-learning
