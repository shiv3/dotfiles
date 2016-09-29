#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "ln -s $f ~/$f"
done

