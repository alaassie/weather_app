#!/bin/bash

# Fetch all branches
git fetch --all

# List all remote branches under 'main' except 'main/main'
remote_branches=$(git branch -r | grep -v '\->' | grep -v 'main/main$' | grep -v 'HEAD' | sed 's/main\///')

# Loop through each branch and delete it
for branch in $remote_branches; do
  # Check if branch exists before attempting to delete
  if git ls-remote --exit-code --heads main $branch > /dev/null; then
    echo "Deleting remote branch: $branch"
    git push main --delete $branch
  else
    echo "Branch $branch does not exist, skipping."
  fi
done
