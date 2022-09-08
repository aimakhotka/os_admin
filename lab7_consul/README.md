# Лабораторная работа №7

## Задача
>1. Настроить консул (использовать уже готовую роль и инветори).
>2. База данных должна быть проинициализирована на выделенных дисках (в Vargrantfile они уже подключены). БД должна находить в папке /pgsql/pg_data/14. WAL архивы должны находиться в папке /pgsql/pg_wal/14. В эти папки должны быть примонтированы диски /dev/sdb и /dev/sdc соответственно. Диски должны быть подключены в LVM и отформатированы в файловой системе xfs.
>3. На серверах pg1 и pg2 настроить оркестратор репликации Patroni (пакет в архиве).
>4. С помощью утилиты vip-manager обеспечить настройку VIP адреса на мастер сервере. https://github.com/cybertec-postgresql/vip-manager/releases/download/v1.0.2/vip-manager-1.0.2-1.x86_64.rpm . Напоминаю, что в конфиге vip-manager необходимо настроить подключение по DCS Consul. IP адрес подключения 127.0.0.1:8500. Так же нужно будет указать consul_token, переменную которого можно взять в роли consul



## Как запустить Ansible-сценарий

1. Склонировать репозиторий
``` 
git clone https://github.com/dif-dif/ansible.git 
```
2. Открыть в терминале папку lab7_consul
3. Отредактировать в Vagrantfile ip адреса (при необходимости) и путь до вашего публичного ssh ключа
>("/home/sirius/.ssh/id_rsa.pub")
3. Поднять виртуалку
```
vagrant status (убеждаемся что машины существуют, но не запущены)
vagrant up
```
4. Запустить плейбук
```
ansible-playbook pg.yml
```

### Скриншоты работоспособности
- Заходим на ноду, убеждаемся, что slave в роли Sync Standby
![Статус](https://github.com/dif-dif/ansible/blob/master/pictures/lab7_1.png)
- Меняем мастера, чтобы убедиться, что патрони работает как надо
![switchover](https://github.com/dif-dif/ansible/blob/master/pictures/lab7_2.png)
- Спустя некоторое время роль второй ноды стала Sync Standby
![switchover](https://github.com/dif-dif/ansible/blob/master/pictures/lab7_3.png)
