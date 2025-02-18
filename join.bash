#!/usr/bin/env bash

#IMG=$(basename $1)
# Use quotes if image name contains symbols like a forward slash /, but then
# cannot use `basename`.
IMG="$1"

# Truncate last "/" in case using bash-complete for directory name
if [[ $IMG == */ ]]; then
  IMG=${IMG::-1}
fi
echo $IMG

xhost +
containerid=$(docker ps -aqf "ancestor=${IMG}")
docker exec --privileged -e DISPLAY=${DISPLAY} -e LINES=`tput lines` -it ${containerid} bash
xhost -
