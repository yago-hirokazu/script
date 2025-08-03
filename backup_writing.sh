#!/bin/sh

DSTDIR="/c/Users/yagouhir/OneDrive - STMicroelectronics/backup/writing"

cd writing
pwd
ls -1 --color=none | sed -n 's/\(.*\)\//\1.tgz/p' | sed -n 'p; s/\(.*\).tgz/\1\//p' | xargs -n 2 tar -cvzf

if [ ! -d "$DSTDIR" ]; then
    mkdir "$DSTDIR"
fi

\cp -vf *.tgz "$DSTDIR"
