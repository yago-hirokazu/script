#!/bin/sh

DSTDIR="/c/Users/yagouhir/OneDrive - STMicroelectronics/backup/code"

cd code
pwd

if [ ! -d "$DSTDIR" ]; then
    mkdir "$DSTDIR"
fi

\cp -vf *.tgz "$DSTDIR"
