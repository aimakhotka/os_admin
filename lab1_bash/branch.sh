#!/bin/bash

while true ; do

    echo 'Enter a number'; read number

    if [ -z $number ]; then
            echo "bye"
            break
    fi

    if [ $number -ge 0 ]; then

        case $number in
            0) echo -e "No students\n" ;;
            1) echo -e "1 student\n" ;;
            [2-4]) echo -e "$number students\n" ;;
            *) echo -e "A lot of students\n"
        esac

    else
        echo "Error. A number less than zero"
    fi

done
