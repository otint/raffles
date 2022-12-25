#!/bin/bash

set -euo pipefail;

function draw() {
    list="${1}"
    numToDraw="${2}"
    echo -e "\n================================================================================\n"
    echo -e "Drawing from ${list}\n"
    folder=$(dirname "${list}")
    entropy=$(cat "${folder}/entropy" | tail -n 1 | sed -n 's/^0x\([0-9a-fA-F]*\)$/\1/p')

    if [[ -z "${entropy}" ]]; then
        echo "No entropy set. Skipping..."
        return
    fi 

    cat "${list}" | ethier shuffle -e "${entropy}" -n "${numToDraw}"
}

draw dbs/22-12-24/raffle-for-merch 3
