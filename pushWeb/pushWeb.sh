#!/bin/bash

#This script can be used to push your website to your github repo. Feel free to modify it.

# If a command fails then the deploy stops
set -e

# Confirm with user
read -n 1 -p "Push to GitHub? (enter or ctrl+c): " input

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

#updating the resume
# gh gist edit 2e0b3b8758c8a65cf7ca173b3eca7fa2 tex/resume.tex

#updating the whole website
# Add changes to git
git add .

# Commit changes
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source
git push

