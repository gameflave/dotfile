#!/bin/bash

export LC_TIME=ja_JP.UTF-8
if [ "$1" == "short" ]; then
    date +"%a"
else
    date +"%A"
fi
