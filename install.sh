#!/usr/bin/env bash

rollOut () {
    if [ -f "folder" ]; then
        file=$(cat folder)
        for f in *; do
            if ! [ "$f" == "folder" ]; then
                echo "$f nach $file"
                mv $f $file
            fi
        done
    else
        for f in *; do
            if [ -d "$f" ]; then
                cd $f
                rollOut
                cd ..
            fi
        done
    fi
}

rollOut
