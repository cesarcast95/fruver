#!/bin/bash

root_path=$(pwd)

echo "Enter git clone method: SSH(1) or HTTPS(2) if it's needed or press Intro to continue"
read choice

case "${choice}" in
1)
  cmd_git="git@gitlab.com:deur/fruver.git"
  ;;

2)
  echo "Enter Gitlab Username"
  read username
  echo
  cmd_git="https://${username}@gitlab.com/deur"
  ;;
esac
cd fruver
git clone $cmd_git

