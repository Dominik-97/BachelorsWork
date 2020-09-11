#!/bin/bash

git status

read -n1 -p "Push that? [y,n] Press Any button to manually specify what to push" doit
case $doit in
  y|Y)
  git add .
  read -p "What is your commit message?" commitMessage
  git commit -m "$commitMessage"
  git push -u origin NewStructure2.0 ;;
  n|N)
  exit ;;
  *)
  read -p "Please specify what to commit the same way you would after git add." whattoCommit
  git add $whattoCommit
  read -p "What is your commit message?" commitMessage
  git commit -m "$commitMessage"
  git push -u origin NewStructure2.0 ;;
esac
