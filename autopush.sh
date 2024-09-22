#!/bin/bash

# Define the commit message
commit_message=$1

# Check if a commit message is provided
if [ -z "$commit_message" ]; then
  echo "Error: No commit message provided."
  echo "Usage: ./git-auto-push.sh \"Your commit message\""
  exit 1
fi

# Add all changed files
git add .

# Commit the changes
git commit -m "$commit_message"

# Push the changes to the remote repository
git push origin main

echo "Changes pushed to the remote repository!"
