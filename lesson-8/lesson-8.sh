# Начало работы в терминале над домашним заданием к 8-му уроку

# 1. Вывести на экран 3 раза имя пользователя, от которого запускается команда.

ubuntu@ip-172-31-15-35:~$ for((count=1;count<4;count++))
> do
>     whoami
> done
ubuntu
ubuntu
ubuntu


ubuntu@ip-172-31-15-35:~$ for count in {1..3}
> do
>     id -u -n
> done
ubuntu
ubuntu
ubuntu


# 2. Вывести с помощью цикла while все четные числа от 0 до 100 включительно.
ubuntu@ip-172-31-15-35:~$ var=0
ubuntu@ip-172-31-15-35:~$ while [ $var -lt 101 ]
>     do
>     echo "$var"
>     var=$(($var + 2))
> done
0
2
4
6
8
10
12
14
16
18
20
22
24
26
28
30
32
34
36
38
40
42
44
46
48
50
52
54
56
58
60
62
64
66
68
70
72
74
76
78
80
82
84
86
88
90
92
94
96
98
100


# 3.Создать с помощью nano файл test.txt. Настроить автоматический бэкап этого файла раз в 10 минут 
# в файл с названием test.txt.bak с использованием cron.
ubuntu@ip-172-31-15-35:~$ ls
ubuntu@ip-172-31-15-35:~$ nano test.txt

ubuntu@ip-172-31-15-35:~$ crontab -e
# скриншот настройки регламента выполнения находится в файле les_8_task_3_1.jpg. Прикреплен к заданию

ubuntu@ip-172-31-15-35:~$ tail -n 100 -f  /var/log/syslog | grep -i 'cron.*(ubuntu) CMD'
Jul  8 19:10:01 ip-172-31-15-35 CRON[1893]: (ubuntu) CMD (cp /home/ubuntu/test.txt /home/ubuntu/test.txt.bak)
Jul  8 19:20:01 ip-172-31-15-35 CRON[1937]: (ubuntu) CMD (cp /home/ubuntu/test.txt /home/ubuntu/test.txt.bak)
Jul  8 19:30:01 ip-172-31-15-35 CRON[1990]: (ubuntu) CMD (cp /home/ubuntu/test.txt /home/ubuntu/test.txt.bak)


# скриншот выполнения команды les_8_task_3_2.jpg прикреплен к заданию

