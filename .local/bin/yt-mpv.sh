#!/bin/bash

URL=""

case $1 in
    "lofi-study" | 1) URL="https://www.youtube.com/watch?v=5qap5aO4i9A"
        ;;
    "lofi-chill" | 2) URL="https://www.youtube.com/watch?v=DWcJFNfaw9c"
        ;;
    "lofi-night-study" | 3) URL="https://www.youtube.com/watch?v=lTRiuFIWV54"
        ;;
    "post-rock-quarantine" | 4) URL="https://www.youtube.com/watch?v=4F_vX3rmy_w"
        ;;
    "post-rock-chill" | 5) URL="https://www.youtube.com/watch?v=VW8clbMrcM0"
        ;;
    "lofi-conte" | "secret") URL="https://www.youtube.com/watch?v=tL7gE_9R1TU"
        ;;
    * ) echo -e "Please provide an argument, you can choose from:\n"
        echo "1. lofi-study"
        echo "2. lofy-chill"
        echo "3. lofi-night-study"
        echo "4. post-rock-quarantine"
        echo "5. post-rock-chill"
        echo ""
    esac 

VIDEO="--no-video"
if [ $2 ] && [ $2 == "-v" ]; then
    VIDEO=""
fi

if [[ $URL != "" ]]; then
    mpv $URL $VIDEO
fi