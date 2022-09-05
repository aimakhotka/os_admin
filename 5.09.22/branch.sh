#!/bin/bash

while true; do

    echo 'Enter a number'; read number

    if [ -z $number ]; then
            echo "bye"
            break
    fi

    if [ $number -lt 0 ]; then
        echo "Error. A number less than zero"; break
    fi

    case $number in
        ^[0-9]+$) continue ;;
        *) break
    esac


    case $number in
        0) echo -e "No students\n" ;;
        1) echo -e "1 student\n" ;;
        2) echo -e "2 students\n" ;;
        3) echo -e "3 students\n" ;;
        4) echo -e "4 students\n" ;;
        *) echo -e "A lot of students\n"
    esac

done