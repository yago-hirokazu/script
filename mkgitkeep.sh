#!/bin/sh

find . -type d -empty | sed -n 's/\(.*\)/\1\/.gitkeep/p' | xargs -n 1 touch
