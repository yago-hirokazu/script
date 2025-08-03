#!/bin/sh

DSTDIR="/c/Users/yagouhir/OneDrive - STMicroelectronics/backup/STM32CubeFW"
cd /c/Users/yagouhir/STM32Cube/Repository
pwd

if [ ! -d "$DSTDIR" ]; then
    mkdir "$DSTDIR"
fi

\cp -vf *.tgz "$DSTDIR"
