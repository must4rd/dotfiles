#!/bin/bash

bspc node -d '^6' -f
vboxheadless -s "Manjaro" &
sleep 5
bspc node -d '^6' -f
