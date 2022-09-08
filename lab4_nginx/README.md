# Лабораторная работа №4

## Задача
>1. На серверах rrobin, web1, web2 установить nginx.
>2. На серверах web1, web2 Nginx должен работать по порту 8080 и отдавать кастомную страницу, зайдя на которую можно понять на каком сервере вы находитесь.
>3. На сервере rrobin Nginx должен обеспечить балансировку нагрузки серверов web1 и web2 в режиме round-robin. Вес каждого сервера одинаковый.
>4. Установка и настройка всего ПО должна быть обеспечена Ansible-сценарием.
>5. Все файлы по этому заданию выложить в Github и написать ReadMe со скринами работоспособности и инструкцию по запуску вашего Ansible-сценария


## Как запустить Ansible-сценарий

1. Склонировать репозиторий
``` 
git clone https://github.com/dif-dif/ansible.git 
```
2. Открыть в терминале папку lab4_nginx
3. Отредактировать в Vagrantfile ip адреса (при необходимости) и путь до вашего публичного ssh ключа
>("/home/sirius/.ssh/id_rsa.pub")
4. Поднять виртуалку
```
vagrant status (убеждаемся что машины существуют, но не запущены)
vagrant up
```
5. Запустить плейбук
```
ansible-playbook nginx.yml
```

### Скриншоты работоспособности
- Поднимаем виртуалку
![Поднимаем виртуалку](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_0.png)
- Запускаем плейбук
![Запускаем плейбук](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_2.png)
- В итоге обращаемся по ip балансировщика и получаем это. При обновлении страницы будет происходить балансировка и мы будем попадать на разные страницы (на разных серверах)
![В итоге получаем это](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_113.1.png)
![В итоге получаем это](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_113.2.png)
- Также эти страницы доступны по адресам серверов по порту 8080
![В итоге получаем это](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_111.png)
![В итоге получаем это](https://github.com/dif-dif/ansible/blob/master/pictures/lab4_112.png)
