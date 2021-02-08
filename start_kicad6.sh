#!/bin/bash

docker run \
--volume="$HOME/.Xauthority:/home/user/.Xauthority:rw" \
--volume="$HOME/.config/kicad6_docker:/home/user/.config/kicad:rw" \
--volume="$HOME/src:/home/user/src:rw" \
--user=user \
--env="DISPLAY" \
--net=host \
--device=/dev/dri \
-it rleh_kicad6:latest \
/bin/bash -c 'cd ; kicad'
