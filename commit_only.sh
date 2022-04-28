#!/bin/bash

#Add:
git add .

#Git message:
git status
echo "Enter Your branch message:"
read branch_message
git status
echo "Your provided git message is: "${branch_message}
git commit -m "${branch_message}"
