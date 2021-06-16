#!/usr/bin/env bash

PS1="$"
basedir=`pwd`

function update {
    cd "$basedir/$1"
    git fetch && git reset --hard origin/dev/3.0.0
    cd "$basedir/$1/.."
    git add $1
}

update Velocity

# Update submodules
git submodule update --recursive
