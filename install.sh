#!/bin/bash

for f in .??*
do
    cp  $f ~/$f
    echo "ln -s $f ~/$f"
done

