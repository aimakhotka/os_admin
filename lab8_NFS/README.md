# Lab Report No. 8

## Task
>1. Add another NFS server with an additional disk to the previous Vagrantfile. Configure sharing a folder using NFS on the database servers. This folder should be mounted on the database servers at the path /pgsql/pg_backup.
>2. Configure WAL file archiving using the pg_probackup utility
>3. All operations should be performed through a Ansible playbook.



## How to Run Ansible Script

1. Clone the repository
``` 
git clone https://github.com/dif-dif/ansible.git 
```
2. Open the lab8_nfs folder in the terminal.
3. Edit the IP addresses in the Vagrantfile (if necessary) and the path to your public SSH key
>("/home/sirius/.ssh/id_rsa.pub")
3. Bring up the virtual machines.
```
vagrant status (убеждаемся что машины существуют, но не запущены)
vagrant up
```
4. Run the playbook.
```
ansible-playbook pg.yml
```

### Functionality Screenshots
- Access the node and verify that Patroni and the backup system are operational.
![Статус](https://github.com/dif-dif/ansible/blob/master/pictures/lab8_1.png)
