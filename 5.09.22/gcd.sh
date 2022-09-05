#!/bin/sh


while true ; do
    echo 'Enter two numbers. To exit, press "Enter"'
    read n1 n2

    gcd () {
            remainder=1

            while [ $remainder -gt 0 ]
            do
                remainder=$((n1%n2))
                n1=$n2
                n2=$remainder
            done
            }

    if [ -z $n1 ]; then
        echo "bye"
        break

    else
        gcd $1 $2
        echo "GCD is $n1" 
    fi
done