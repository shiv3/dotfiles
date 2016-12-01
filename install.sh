#!/bin/bash

for f in .??*
do
    ln -s $f ~/$f
    echo "ln -s $f ~/$f"
done

