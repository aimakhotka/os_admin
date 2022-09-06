# Лабораторная работа №1
## Задание №2
<details> <summary>Задание</summary>
  
  ```
  Напишите скрипт на bash, который ожидает ввода с клавиатуры один
аргумент (целое число от 0 до бесконечности), который будет
обозначать число студентов в аудитории. В зависимости от значения
числа нужно вывести разные сообщения.
Соответствие входа и выхода должно быть таким:
  
Вход Выход
  
0 No students
  
1 1 student
  
2 2 students
  
3 3 students
  
4 4 students
  
5 и больше A lot of students
  
  ```
  
</details>

<details> <summary>Код</summary>
  
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

![Статус](https://github.com/dif-dif/os_admin_3/blob/master/img/05.09_1.png)

## Задание №3
<details> <summary>Задание</summary>
  
  ```
  Напишите скрипт на bash, который будет определять в какую возрастную группу
попадают пользователи. При запуске скрипт должен вывести сообщение "enter
your name:" и ждать от пользователя ввода имени (используйте read, чтобы
прочитать его). Когда имя введено, то скрипт должен написать "enter your age:"
и ждать ввода возраста (опять нужен read). Когда возраст введен, скрипт пишет
на экран "<Имя>, your group is <группа>", где <группа> определяется на основе
возраста по следующим правилам:
• младше либо равно 16: "child",
• от 17 до 25 (включительно): "youth",
• старше 25: "adult".
После этого скрипт опять выводит сообщение "enter your name:" и всё
начинается по новой. Если в какой-то момент работы скрипта будет введено
пустое имя или возраст 0, то скрипт должен написать на экран "bye" и
закончить свою работу.
  ```
  
 </details>
 
 <details> <summary>Код</summary>
  
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
   
![Статус](https://github.com/dif-dif/os_admin_3/blob/master/img/05.09_2.png)
  
 </details>

## Задание №4
 <details> <summary>Задание</summary>
  
  ```
   Напишите скрипт на bash, который будет искать наибольший общий делитель
(НОД, greatest common divisor, GCD) двух чисел.
После ввода чисел скрипт считает их НОД и выводит на экран
сообщение "GCD is <посчитанное значение>", например, для чисел 15 и 25
это будет "GCD is 5". После этого скрипт опять входит в режим ожидания двух
натуральных чисел. Если в какой-то момент работы пользователь ввел вместо
этого пустую строку, то нужно написать на экран "bye" и закончить свою
работу.
Вычисление НОД несложно реализовать с помощью алгоритма Евклида. Вам
нужно написать функцию gcd, которая принимает на вход два аргумента
(назовем их M и N). Если аргументы равны, то мы нашли НОД -- он
равен M (или N), нужно выводить соответствующее сообщение на экран (см.
выше). Иначе нужно сравнить аргументы между собой. Если M больше N, то
запускаем ту же функцию gcd, но в качестве первого аргумента передаем (M-
N), а в качестве второго N. Если же наоборот, M меньше N, то запускаем
функцию gcd с первым аргументом M, а вторым (N-M).
  ```
   
 </details>
  
 <details> <summary>Код</summary>
  
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

![Статус](https://github.com/dif-dif/os_admin_3/blob/master/img/05.09_3.png)
