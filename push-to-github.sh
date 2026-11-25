#!/bin/bash
# Task 2 helper: run INSIDE the salone-web folder in Ubuntu.
# Usage: bash push-to-github.sh YOUR_GITHUB_USERNAME "Your Name" "you@email.com"
set -e
USER_GH="$1"; NAME="$2"; EMAIL="$3"
if [ -z "$USER_GH" ] || [ -z "$NAME" ] || [ -z "$EMAIL" ]; then
  echo 'Usage: bash push-to-github.sh GITHUB_USERNAME "Your Name" "you@email.com"'; exit 1
fi
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git init
git add .
git commit -m "Initial commit: Salone Digital Solutions website"
git branch -M main
git remote add origin "https://github.com/$USER_GH/salone-web.git" 2>/dev/null || git remote set-url origin "https://github.com/$USER_GH/salone-web.git"
echo ">>> When asked for a password, paste your GitHub personal access token."
git push -u origin main
echo "Done! Now clone it: cd ~ && git clone https://github.com/$USER_GH/salone-web.git"
