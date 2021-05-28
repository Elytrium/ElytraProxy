#!/usr/bin/env bash
(
set -e
PS1="$"

function changelog() {
    base=$(git ls-tree HEAD $1  | cut -d' ' -f3 | cut -f1)
    cd $1 && git log --oneline ${base}...HEAD
}
velocity=$(changelog Velocity)

updated=""
logsuffix=""
if [ ! -z "$velocity" ]; then
    logsuffix="$logsuffix\n\nVelocity Changes:\n$velocity"
    if [ -z "$updated" ]; then updated="Velocity"; else updated="$updated/Velocity"; fi
fi
disclaimer="Upstream has released updates that appears to apply and compile correctly.\nThis update has not been tested"

if [ ! -z "$1" ]; then
    disclaimer="$@"
fi

log="${UP_LOG_PREFIX}Updated Upstream ($updated)\n\n${disclaimer}${logsuffix}"

echo -e "$log" | git commit -F -

) || exit 1
