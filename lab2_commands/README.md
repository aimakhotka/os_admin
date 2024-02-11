# Lab Report No. 2
## Task No. 1
  
  ```
Create two users: user1 and user2. Set passwords for them, and log in to the system under the name of one of the created users.
  
  ```


![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/1.png)

## Task No. 2
  
  ```
Lock the previously added user account user1, log out of the system, and ensure that the account can no longer access the system. Then, unlock the user account user1. Create two new groups named group1 and group2. Execute a command that adds the user account user2 to both of these groups. Use a single command to add this user to both groups at once.
  
  ```
  

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/2.png)

## Task No. 3
  
  ```
Add the user user2 to the appropriate file so that the user has the ability to execute commands with superuser/root privileges. Once logged in as user2, create a small text file with any content in the directory /root.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/3.png)
![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/3_1.png)

## Task No. 4
  
  ```
Log in to the system as the root user. Create a new directory in the home directory of the root user named 'filemaintenance'. Enter this directory and create three files: file1, file2, and file3. Return to the parent directory (root's home directory), and then copy the files located in filemaintenance to the home directory of root.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/4.png)
![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/4_1.png)
![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/4_2.png)


## Task No. 5
  
  ```
Return to the home directory of the root user. Move the directory "filemaintenance" and all its contents to another directory named "movedfiles".
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/5.png)

## Task No. 6
  
  ```
Lock the user account user1 again. Log out of the system. Try to log in to the system three times using the recently locked user account user1. After the third unsuccessful attempt, log in to the system as the root user and unlock the user. Then, view the last 10 lines of the corresponding log file in the system, which will display these unsuccessful login attempts.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/6.png)
![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/6_1.png)
![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/6_2.png)


## Task No. 7
  
  ```
Log in to the system as the root user, search the system for the configuration file named "ld.so.conf", and retrieve the line containing its location and address. Redirect the contents of this file to a second file named ld.so.conf.out in your home directory.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/7.png)

## Task No. 8
  
  ```
Copy the following files to the home directory of the root user:
• /etc/hosts
• /var/log/
dmesg• /usr/bin/whoami
Change the permissions of each file as follows:
• hosts
— Only the owner of the file can read/write/execute, no access rights for the group and other users.
• dmesg
– The owner can read/write, the group and other users can read/execute.
• whoami
— Everyone has permission to execute, no other permissions.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/8.png)
![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/8_1.png)


## Task No. 9
  
  ```
Change the owner and group of all files above so that they belong to user2.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/9.png)

## Task No. 10-12
  
  ```
Log in as root if you haven't already done so. Create a cron job that will generate a list of all users whose directories exist in the home directory every day at noon and save this list to a file named "cronoutput.out" that you will create in your home directory.

Create another cron job that performs the same process as the last one at 15 minutes past every hour (0:15, 1:15, 2:15, etc.).

Create another cron job that performs the same process as the last two, but every 3 minutes between midnight and 1:00 on the 1st day of each month.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/10.png)
![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/10_1.png)

## Task No. 13
  
  ```
Execute the command to prepare your system for package installation using apt-get or yum. Perform a search for available packages and descriptions for the Apache web server. Redirect these results to a file named "search.out" in the root's home directory.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/13.png)

## Task No. 14
  
  ```
Install all available system updates for your system. Also, install the Apache web server. When performing the installation, pass the appropriate parameter to the command line to avoid being prompted to confirm the installation.
  
  ```

![Статус](https://github.com/dif-dif/os_admin/blob/third_semester/lab2_commands/img/14.png)
