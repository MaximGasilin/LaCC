# Начало работы в терминале над домашним заданием к 5-му уроку
ubuntu@ip-172-31-47-135:~$ pwd
/home/ubuntu
ubuntu@ip-172-31-47-135:~$ mkdir lesson_5
ubuntu@ip-172-31-47-135:~$ la
.bash_logout  .bashrc  .cache  .profile  .ssh  lesson_5
ubuntu@ip-172-31-47-135:~$


# 1. Запустить htop и посмотреть, сколько процессоров и оперативной памяти есть на сервере.
ubuntu@ip-172-31-47-135:~$ htop

# пакет htop оказался установленным
ubuntu@ip-172-31-47-135:~$ sudo apt update
ubuntu@ip-172-31-47-135:~$ apt list --upgradable
# анализ выполнения 2-х предыдущих команд показал, что пакет htop не нуждается в обновлении

ubuntu@ip-172-31-47-135:~$ htop
# скриншот с результатом выполнения команды les_5_task_1_in_htop.jpg прикреплен к заданию
# судя по информации в системе 1 процессов и 979 Мб оперативной памяти


# 2. Найти все программы с расширением .py.
ubuntu@ip-172-31-47-135:~$ find / -type f -name "*.py" > les_5_task_2.sh
# find вывела 6948 строки.
# файл les_5_task_2.sh прикреплен к домашнему заданию


# 3.* Создать и запустить программу на Python, выводящую числа от 0 до 100 включительно. 
# Запустить htop во время выполнения программы и найти выполняемую программу в списке процессов, 
# используя поиск по ключевому слову python (использовать средства поиска htop).

# создание программы на Python
ubuntu@ip-172-31-47-135:~$ cd lesson_5
ubuntu@ip-172-31-47-135:~/lesson_5$ vim les_5_task_3.py
ubuntu@ip-172-31-47-135:~/lesson_5$ cat les_5_task_3.py
from time import sleep
from datetime import datetime

for i in range(1,101):

    now = datetime.now()
    print(f'{now.strftime("%H:%M:%S")}: {i}')

# интервал между выводом действительно составлял 1 секунду

ubuntu@ip-172-31-47-135:~/lesson_5$ python3 les_5_task_3.py > temp.sh &
[1] 2519
ubuntu@ip-172-31-47-135:~/lesson_5$ htop

# скриншот с результатом поиска по номеру PID 2519 les_5_task_3_in_htop_2519.JPG прикреплен к заданию
# скриншот с результатом поиска по слову python les_5_task_3_in_htop_python.JPG прикреплен к заданию
ubuntu@ip-172-31-47-135:~$
[1]+  Done                    python3 les_5_task_3.py > temp.sh
ubuntu@ip-172-31-47-135:~$

# Удаление всех файлов и каталога lesson_4 для очистки места и приведения рабочего каталога в порядок.
ubuntu@ip-172-31-47-135:~/lesson_5$ cd ..
ubuntu@ip-172-31-47-135:~$ rm -r lesson_5
ubuntu@ip-172-31-47-135:~$ ls
ubuntu@ip-172-31-47-135:~$


