#!/bin/bash

if [ $1 = test ]; then
    cd /home/algs4/CollidingDisks
    exec java-algs4 CollidingDisks 20
fi

exec $@
