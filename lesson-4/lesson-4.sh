# Начало работы в терминале над домашним заданием к 4-му уроку
ubuntu@ip-172-31-44-150:~$ mkdir lesson_4
ubuntu@ip-172-31-44-150:~$ cd lesson_4
ubuntu@ip-172-31-44-150:~/lesson_4$ la
ubuntu@ip-172-31-44-150:~/lesson_4$ vim les_4_task_1.py
ubuntu@ip-172-31-44-150:~/lesson_4$ la
les_4_task_1.py
ubuntu@ip-172-31-44-150:~/lesson_4$ cat les_4_task_1.py
print('Hello world!')
ubuntu@ip-172-31-44-150:~/lesson_4$ ls -l les_4_task_1.py
-rw-rw-r-- 1 ubuntu ubuntu 22 Jun 23 20:36 les_4_task_1.py


# 1. Создать пользователя user_new и предоставить ему права на редактирование файла с программой, 
# выводящей на экран Hello, world!
ubuntu@ip-172-31-44-150:~/lesson_4$ sudo useradd -m -s /bin/bash user_new
ubuntu@ip-172-31-44-150:~/lesson_4$ sudo passwd user_new
New password:
Retype new password:
passwd: password updated successfully

ubuntu@ip-172-31-44-150:~/lesson_4$ sudo usermod -a -G ubuntu user_new
ubuntu@ip-172-31-44-150:~/lesson_4$ groups user_new
user_new : user_new ubuntu

ubuntu@ip-172-31-44-150:~/lesson_4$ su user_new
Password:
user_new@ip-172-31-44-150:/home/ubuntu/lesson_4$ ls -l les_4_task_1.py
-rw-rw-r-- 1 ubuntu ubuntu 22 Jun 23 20:36 les_4_task_1.py

user_new@ip-172-31-44-150:/home/ubuntu/lesson_4$ echo "print('Hello Luna')" >> les_4_task_1.py
user_new@ip-172-31-44-150:/home/ubuntu/lesson_4$ cat les_4_task_1.py
print('Hello world!')
print('Hello Luna')

# 2. Зайти под юзером user_new и с помощью редактора Vim поменять фразу 
# в скрипте из пункта 1 на любую другую.
user_new@ip-172-31-44-150:/home/ubuntu/lesson_4$ cat les_4_task_1.py
print('Hello world!')
print('Hello Luna')
user_new@ip-172-31-44-150:/home/ubuntu/lesson_4$ vim les_4_task_1.py
user_new@ip-172-31-44-150:/home/ubuntu/lesson_4$ cat les_4_task_1.py
print('Hello Mars!')
print('Hello Sun!!!')


# 3.* Под юзером user_new зайти в его домашнюю директорию и создать программу на Python, 
# выводящую в консоль цифры от 1 до 10 включительно с интервалом в 1 секунду.

user_new@ip-172-31-44-150:/home/ubuntu/lesson_4$ cd ~
user_new@ip-172-31-44-150:~$ whoami
user_new
user_new@ip-172-31-44-150:~$ vim les_4_task_2.py
user_new@ip-172-31-44-150:~$ cat les_4_task_2.py
from time import sleep

for i in range(1, 11):
    print(i)
    sleep(1)
user_new@ip-172-31-44-150:~$ python3 --version
Python 3.8.2
user_new@ip-172-31-44-150:~$ python3 les_4_task_2.py
1
2
3
4
5
6
7
8
9
10
# интервал между выводом действительно составлял 1 секунду

# Еще один способ. С помощью строки #!/usr/bin/python3
user_new@ip-172-31-44-150:~$ vim les_4_task_2.py
user_new@ip-172-31-44-150:~$ cat les_4_task_2.py
#!/usr/bin/python3
from time import sleep

for i in range(1, 11):
    print(i)
    sleep(1)

user_new@ip-172-31-44-150:~$ chmod u+x les_4_task_2.py
user_new@ip-172-31-44-150:~$ ls -l les_4_task_2.py
-rwxrw-r-- 1 user_new user_new 92 Jun 23 21:21 les_4_task_2.py

user_new@ip-172-31-44-150:~$ les_4_task_2.py
les_4_task_2.py: command not found

user_new@ip-172-31-44-150:~$ ./les_4_task_2.py
1
2
3
4
5
6
7
8
9
10
# интервал между выводом действительно составлял 1 секунду

# Удаление всех файлов и каталога lesson_4 для очистки места и приведения рабочего каталога в порядок.
user_new@ip-172-31-44-150:~$ la
.bash_logout  .les_4_task_2.py.swp  .profile  les_4_task_2.py
.bashrc       .local                .viminfo
user_new@ip-172-31-44-150:~$ rm les_4_task_2.py

user_new@ip-172-31-44-150:~$ su ubuntu
Password:
ubuntu@ip-172-31-44-150:~$ cd ~

ubuntu@ip-172-31-27-150:~/lesson_4$ cd ..
ubuntu@ip-172-31-27-150:~$ rm -r lesson_4/
ubuntu@ip-172-31-27-150:~$ ls
ubuntu@ip-172-31-27-150:~$

