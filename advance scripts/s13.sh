#!/bin/bash

read choice

case "$choice" in
    "whoami")
        whoami
    ;;
    "calendar")
        calendar
    ;;
    "date")
        date
    ;;
    *)
        echo "invalid option"
    ;;
esac