# Lab Report No. 5

## Task
>1. Install Nginx on servers web1 and web2.
>2. Install and configure resilient pair HAProxy+Keepalived on servers haproxy1 and haproxy2. Configure VIP using Keepalived according to the scheme.
>3. Nginx on servers web1 and web2 should work on port 8080 and serve a custom page that indicates which server you are on.
>4. HAProxy software on servers should balance the load between servers web1 and web2 in round-robin mode. Set the timeouts for waiting for responses from web1 and web2 as short as possible, say, 1-2 seconds.
>5. Installation and configuration of all software should be provided by an Ansible script.
>6. Upload all files for this task to Github and write a ReadMe with screenshots of functionality and instructions for running your Ansible script.


## How to Run Ansible Script

1. Clone the repository
``` 
git clone https://github.com/dif-dif/ansible.git 
```
2. Open the lab5_haproxy folder in the terminal.
3. Edit the IP addresses in the Vagrantfile (if necessary) and the path to your public SSH key
>("/home/sirius/.ssh/id_rsa.pub")
4. Bring up the virtual machines.
```
vagrant status (убеждаемся что машины существуют, но не запущены)
vagrant up
```
5. Run the playbook.
```
ansible-playbook nginx.yml
```

### Load Balancing Functionality Screenshots
- Turn off one virtual machine with haproxy. We see that both web servers are accessible.
![Web1](https://github.com/dif-dif/ansible/blob/master/pictures/lab5_1.png)
![Web2](https://github.com/dif-dif/ansible/blob/master/pictures/lab5_2.png)
- Turn on the virtual machine from the previous step and turn off the second one. We see that the Virtual IP has been transferred to another haproxy server. Both web servers are still accessible.
![Web1](https://github.com/dif-dif/ansible/blob/master/pictures/lab5_3.png)
![Web2](https://github.com/dif-dif/ansible/blob/master/pictures/lab5_4.png)
