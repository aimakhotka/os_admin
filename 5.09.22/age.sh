#!/bin/bash

while true; do
    echo 'To exit, press "Enter"'
    echo 'Enter your name: '; read name

    if [ -z $name ]; then
        echo "bye"
        break
    fi

    echo 'Enter your age: '; read age

    if [[ $age -ge 0 ]]; then

        if [[ $age -le 16 ]]; then
            echo "$name, your group is child"
        elif [ $age -ge 17 ] && [ $age -le 25 ]; then
            echo "$name, your group is youth"
        else
            echo "$name, your group is adult"
        fi
    else
        echo "Error in the number. Try again"
    fi
done