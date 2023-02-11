#!/bin/bash
for file in *.gpj
do
    dir=$(basename "$file" .gpj)
    if [ -d "$dir/Sources" ]
    then
        cat "$dir/Sources"/* > "$file"
    fi
done
