# Lab Report No. 7

## Task
>1. Configure Consul (use an already prepared role and inventory)..
>2. The database must be initialized on dedicated disks (already connected in the Vagrantfile). The database should be located in the folder /pgsql/pg_data/14. WAL archives should be located in the folder /pgsql/pg_wal/14. Disks /dev/sdb and /dev/sdc should be mounted to these folders, respectively. The disks should be connected in LVM and formatted with the XFS file system.
>3. Configure the Patroni replication orchestrator on servers pg1 and pg2 (package is provided in the archive).
>4. Use the vip-manager utility to configure the VIP address on the master server. https://github.com/cybertec-postgresql/vip-manager/releases/download/v1.0.2/vip-manager-1.0.2-1.x86_64.rpm. Please note that in the vip-manager config, it is necessary to configure connection via DCS Consul. The connection IP address is 127.0.0.1:8500. You also need to specify consul_token, the value of which can be taken from the Consul role.



## How to Run Ansible Script

1. Clone the repository
``` 
git clone https://github.com/dif-dif/ansible.git 
```
2. Open the lab7_consul folder in the terminal.
3. Edit the IP addresses in the Vagrantfile (if necessary) and the path to your public SSH key
>("/home/sirius/.ssh/id_rsa.pub")
3. Bring up the virtual machines.
```
vagrant status (make sure the machines exist but are not running)
vagrant up
```
4. Run the playbook.
```
ansible-playbook pg.yml
```

### Functionality Screenshots
- Access the node and verify that the slave is in the Sync Standby role
![Status](https://github.com/dif-dif/os_admin/tree/second_semester/pictures/lab7_1.png)
- Perform a switchover to ensure that Patroni is working as expected
![switchover](https://github.com/dif-dif/os_admin/tree/second_semester/pictures/lab7_2.png)
- After some time, the role of the second node changed to Sync Standby
![switchover](https://github.com/dif-dif/os_admin/tree/second_semester/pictures/lab7_3.png)
