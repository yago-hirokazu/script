#!/bin/sh

DSTDIR="/c/Users/yagouhir/OneDrive - STMicroelectronics/backup/STM32CubeFW"
cd /c/Users/yagouhir/STM32Cube/Repository
pwd

find . -name ".git" -exec echo {} > projectlist.txt \;

FILE=projectlist.txt
while read LINE
do
    dir_path=`echo ${LINE} | sed -n 's/\.\/\(.*\)\/.git/\1/p'`
    tgz_name=`echo ${dir_path} | sed -n 's/\//_/gp' | sed -n 's/\./_/gp' | sed -n 's/\(.*\)/\1.tgz/p'`
    echo ${tgz_name} ${dir_path} | xargs -n 2 tar -cvzf
done < "${FILE}"

if [ ! -d $DSTDIR ]; then
    mkdir $DSTDIR
fi

\cp -vf *.tgz $DSTDIR
