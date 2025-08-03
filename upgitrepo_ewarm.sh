#!/usr/bin
cd ./debugger/ST
git add .
git commit -m "Add/Update files"
cd ../../
cd ./devices/ST
git add .
git commit -m "Add/Update files"
cd ../../
cd ./flashloader/ST
git add .
git commit -m "Add/Update files"
cd ../../
cd ./linker/ST
git add .
git commit -m "Add/Update files"
cd ../../
echo "done"

