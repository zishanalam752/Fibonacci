#!/bin/bash
set -e

echo "Ensuring branches are set up correctly..."
# Ensure we are currently on the feature branch or can switch to it
if ! git show-ref --verify --quiet refs/heads/feat/fibonacci-implementation; then
  echo "Error: Branch 'feat/fibonacci-implementation' does not exist."
  exit 1
fi

# Prompt for repo URL
REPO_URL="https://github.com/zishanalam752/Fibonacci.git"

# Validate URL input
if [ -z "$REPO_URL" ]; then
  echo "Error: Repository URL is required."
  exit 1
fi

# Add or update remote 'origin'
if git remote | grep -q "^origin$"; then
  echo "Remote 'origin' already exists. Updating URL to $REPO_URL..."
  git remote set-url origin "$REPO_URL"
else
  echo "Adding remote 'origin'..."
  git remote add origin "$REPO_URL"
fi

echo "--------------------------------------------------------"
echo "Pushing 'main' branch (base)..."
git push -u origin main

echo "--------------------------------------------------------"
echo "Pushing 'feat/fibonacci-implementation' branch (head)..."
git push -u origin feat/fibonacci-implementation

# Extract repo web URL from the .git URL for the message
# Removes .git suffix if present
WEB_URL=${REPO_URL%.git}

echo ""
echo "========================================================"
echo "DONE! Your code is pushed."
echo "Create your Pull Request by visiting strictly this link:"
echo "$WEB_URL/compare/main...feat/fibonacci-implementation?expand=1"
echo "========================================================"
