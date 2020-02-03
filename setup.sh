#!/bin/bash

set -eu

SERIAL_PORT=$1
BAUD_RATE=$2

sudo apt-get update -y
sudo apt-get install -y git cups wiringpi build-essential libcups2-dev libcupsimage2-dev

ZJ_DIR=$HOME/zj-58
if ! test -d "$ZJ_DIR"; then
    git clone https://github.com/adafruit/zj-58 $ZJ_DIR
    pushd "${ZJ_DIR}" > /dev/null
        make
        sudo ./install
    popd > /dev/null
fi

sudo lpadmin -p ZJ-58 -E -v serial:$SERIAL_PORT?baud=$BAUD_RATE -m zjiang/ZJ-58.ppd
sudo lpoptions -d ZJ-58
