# Lab Report No. 1
## Task No. 2
<details> <summary>Task</summary>
  
  ```
  Write a bash script that waits for input from the keyboard for one argument (an integer from 0 to infinity), which will represent the number of students in the classroom. Depending on the value of the number, different messages should be displayed.
The correspondence between input and output should be as follows:
  
Input Output
  
0 No students
  
1 1 student
  
2 2 students
  
3 3 students
  
4 4 students
  
5 и more A lot of students
  
  ```
  
</details>

<details> <summary>Code</summary>
  
  ```
#!/bin/bash

while true ; do

    echo 'Enter a number'; read number

    if [ -z $number ]; then
            echo "bye"
            break
    fi

    if [ $number -lt 0 ]; then
        echo "Error. A number less than zero"; break
    fi

    case $number in
        0) echo -e "No students\n" ;;
        1) echo -e "1 student\n" ;;
        [2-4]) echo -e "$number students\n" ;;
        *) echo -e "A lot of students\n"
    esac

done
  ```
  
</details>

![Status](https://github.com/dif-dif/os_admin_3/blob/third_semester/05.09_bash/img/1.png)

## Task No.  №3
<details> <summary>Task</summary>
  
  ```
  Write a bash script that determines which age group users fall into. Upon execution, the script should display the message "enter your name:" and wait for the user to enter their name (use `read` to read it). When the name is entered, the script should print "enter your age:" and wait for the age to be entered (again, using `read`). After entering the age, the script writes to the screen "<Name>, your group is <group>", where <group> is determined based on the age according to the following rules:
- 16 or younger: "child",
- 17 to 25 (inclusive): "youth",
- over 25: "adult".
After that, the script again displays the message "enter your name:" and the process starts anew. If at any point during the script's operation an empty name or age 0 is entered, the script should print "bye" to the screen and terminate its operation.
  ```
  
 </details>
 
 <details> <summary>Code</summary>
  
  ```
#!/bin/bash

while true; do
    echo 'To exit, press "Enter"'
    echo 'Enter your name: '; read name

    if [ -z $name ]; then
        echo "bye"
        break
    fi

    echo 'Enter your age: '; read age

    if [[ $age -eq 0 ]]; then
        echo "bye"
        break

    elif [[ $age -gt 0 ]]; then
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
  ```
  ![Status](https://github.com/dif-dif/os_admin_3/blob/third_semester/05.09_bash/img/2.png)
  
 </details>

## Task No. 4
 <details> <summary>Task</summary>
  
  ```
   Write a bash script that will find the greatest common divisor (GCD) of two numbers. After entering the numbers, the script calculates their GCD and displays the message "GCD is <calculated value>" on the screen. For example, for numbers 15 and 25, it will be "GCD is 5". After that, the script enters the waiting mode again for two natural numbers. If at any point during its operation the user enters an empty line instead, it should display "bye" on the screen and terminate its operation.

Calculating the GCD can be implemented using the Euclidean algorithm. You need to write a function `gcd` that takes two arguments (let's call them M and N). If the arguments are equal, then we have found the GCD -- it is equal to M (or N), and the corresponding message should be displayed on the screen (see above). Otherwise, we need to compare the arguments. If M is greater than N, then we call the same `gcd` function, but we pass (M-N) as the first argument and N as the second argument. If, on the other hand, M is less than N, then we call the `gcd` function with M as the first argument and (N-M) as the second argument.
  ```
   
 </details>
  
 <details> <summary>Code</summary>
  
  ```
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
  ```
   
 </details>

![Status](https://github.com/dif-dif/os_admin_3/blob/third_semester/05.09_bash/img/3.png)
