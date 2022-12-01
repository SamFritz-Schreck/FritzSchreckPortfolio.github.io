#!/bin/bash

git_last_commit_date="$(git log -1 --format=%cd)"
echo "Git last commit date: $git_last_commit_date"

md_files="$(find . -type f -name "*.md")"

for file in $html_files; do 
  echo "Inserting date into: $file" 
  sed -i "" "s|<span id=\"git-last-commit-date\">*</span>|<span id=\"git-last-commit-date\">$git_last_commit_date</span>|g" "$file"
done 
