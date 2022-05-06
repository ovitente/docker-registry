#!/usr/bin/env bash

source functions/functions.sh
source ip.list # Sources Lang - IP array

# Check if no args supplied
if [ -z $* ]; then
  echo "No options found!"
  exit 1
fi

while [ $# -gt 0 ] ; do
  case $1 in
    -s | --sendfiles)       S="$2" ;;
    -p | --provision)       echo "$2" ;;
    -l | --launchapps)      A="$2" ;;
    -e | --envupdate)       B="$2" ;;
    -r | --restartservices) B="$2" ;;
    -g | --getstatus)       B="$2" ;;
  esac
  shift
done

# sendfiles provision launchapps envupdate restartservices getstatus
