# Lab Report No. 4

## Task
>1. Install Nginx on servers rrobin, web1, and web2.
>2. Configure Nginx on servers web1 and web2 to operate on port 8080 and serve a custom page that allows determining which server you are on.
>3. Configure Nginx on server rrobin to balance the load between servers web1 and web2 using round-robin mode. Each server's weight should be equal.
>4. Installation and configuration of all software should be provided by an Ansible playbook.
>5. All files for this task should be uploaded to GitHub, accompanied by a ReadMe file containing descriptions, screenshots of functionality, and instructions for running the Ansible playbook.


## How to run the Ansible playbook:

1. Clone the repository:
``` 
git clone https://github.com/dif-dif/ansible.git 
```
2. Navigate to the lab4_nginx directory in the terminal.
3. Edit the IP addresses in the Vagrantfile (if necessary) and set the path to your public SSH key (/home/sirius/.ssh/id_rsa.pub).
4. Start the virtual machines:
```
vagrant status (Ensure that the machines exist but are not running)
vagrant up
```
5. Run the playbook.
```
ansible-playbook nginx.yml
```

### 
Screenshots of functionality
- Bringing up the virtual machine
![Bringing up the virtual machine](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_0.png)
- Running the playbook
![Running the playbook](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_2.png)
- As a result, we access the IP of the load balancer and get this. Upon refreshing the page, load balancing occurs, and we end up on different pages (on different servers).
![In the end, we get this.](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_113.1.png)
![In the end, we get this.](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_113.2.png)
- These pages are also accessible at server addresses on port 8080.
![In the end, we get this.](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_111.png)
![In the end, we get this.](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_112.png)
