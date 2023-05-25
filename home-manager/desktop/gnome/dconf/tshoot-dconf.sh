#!/usr/bin/env bash

cd ~/Downloads && mkdir dconf-shoot && cd ~/Downloads/dconf-tshoot 

dconf dump / | awk -v RS= '{print > ("dconf-" NR ".conf")}'

for f in dconf-*.conf; do
    echo -n $f
    if dconf2nix -e < $f > /dev/null 2>&1; then
        echo " -> SUCCESS"
    else
        echo " -> ERROR:"
        cat $f
        echo #newline
    fi
done

cd .. && rm -rf dconf-tshoot

exit 0
