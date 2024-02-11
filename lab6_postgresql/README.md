# Lab Report No. 6

## Task
>1. Install PostgreSQL on servers pg1 and pg2. Configure data replication and WAL archiving between the servers.


## How to Run Ansible Script

1. Clone the repository
``` 
git clone https://github.com/dif-dif/ansible.git 
```
2. Open the lab6_postgresql folder in the terminal.
3. Edit the IP addresses in the Vagrantfile (if necessary) and the path to your public SSH key
>("/home/sirius/.ssh/id_rsa.pub")
4. Bring up the virtual machines.
```
vagrant status (make sure the machines exist but are not running)
vagrant up
```
5. Run the playbook.
```
ansible-playbook postgres.yml
```

### Database Functionality Screenshots
- Access the master node and ensure that the PostgreSQL service is running and operational.
![Status](https://github.com/dif-dif/ansible/blob/master/pictures/lab6_3.png)

- Verify that the WAL directory has been created and is being written to.
![WAL Directory](https://github.com/dif-dif/ansible/blob/master/pictures/lab6_1.png)

- Access the second machine, verify that replication has occurred, tables have been copied, and check the inability to edit the database (read-only mode).
![Replication](https://github.com/dif-dif/ansible/blob/master/pictures/lab6_2.png)
