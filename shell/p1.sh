#!/bin/bash

while [ "$1" != "" ]; do
    echo $1
    echo $#
    shift
done

interactive=
filename=
while [ "$1" != "" ]; do
    case $1 in 
        -f | --file) shift
            filename=$1
            ;;
        -i | --interactive) interactive=1
            ;;
        -h | --help) usage
            exit 
            ;;
        * ) usage
            exit 1
    esac
    shift
done

echo $filename
echo $interactive

