#!/bin/sh

TARGET_FILE="$2/`basename $1`"

if [ -f "$TARGET_FILE" ]; then
    printf "$1 exists! Overwrite (y/N/d)? "
    read overwrite
    case "$overwrite" in
        y|Y)
            # continue
            ;;
        n|N)
            exit 0
            ;;
        d|D)
            vimdiff "$1" "$TARGET_FILE"
            exit 0
            ;;
        *)
            exit 0
            ;;
    esac
fi

cp "$1" "$TARGET_FILE"
