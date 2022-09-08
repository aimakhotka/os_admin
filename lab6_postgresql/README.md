# Лабораторная работа №6

## Задача
>1. На сервера pg1 и pg2 установить PostgreSQL. Между серверами настроить репликацию данных и архивирование WAL


## Как запустить Ansible-сценарий

1. Склонировать репозиторий
``` 
git clone https://github.com/dif-dif/ansible.git 
```
2. Открыть в терминале папку lab6_postresql
3. Отредактировать в Vagrantfile ip адреса (при необходимости) и путь до вашего публичного ssh ключа
>("/home/sirius/.ssh/id_rsa.pub")
4. Поднять виртуалку
```
vagrant status (убеждаемся что машины существуют, но не запущены)
vagrant up
```
5. Запустить плейбук
```
ansible-playbook postgres.yml
```

### Скриншоты работоспособности БД 
- Заходим на мастер ноду, убеждаемся, что сервис постгреса запущен и работает
![Статус](https://github.com/dif-dif/ansible/blob/master/pictures/lab6_3.png)

- Проверяем, что каталог WAL создался и в него ведется запись
![Каталог  WAL](https://github.com/dif-dif/ansible/blob/master/pictures/lab6_1.png)

- Заходим на вторую машину, проверяем, что репликация произошла и таблицы скопировалась, и проверяем невозможность редактировать БД (режим read-only)
![Репликация](https://github.com/dif-dif/ansible/blob/master/pictures/lab6_2.png)
