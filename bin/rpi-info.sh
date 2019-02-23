#!/usr/bin/env bash

# Check hardware info here: https://elinux.org/RPi_HardwareHistory

b=$(tput bold)
n=$(tput sgr0)

REVISION=$(cat /proc/cpuinfo | grep 'Revision' | awk '{print $3}')
MODEL=$(tr -d '\0' </sys/firmware/devicetree/base/model)

echo "Hardware info:"
echo "  $MODEL"
echo "  Hardware revision is ${b}$REVISION${n}"

