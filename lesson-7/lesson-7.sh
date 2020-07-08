# Начало работы в терминале над домашним заданием к 7-му уроку

# 1. Выбрать из домашней директории пользователя ubuntu файлы с расширением .py, название которых начинается на букву t.
# Т.к. в домашнем каталоге файлов *.py нет, то перешел в корневой каталог /usr. И решил поискать там
ubuntu@ip-172-31-27-95:~$ cd ..
ubuntu@ip-172-31-27-95:/home$ cd..
ubuntu@ip-172-31-27-95:/$ cd ..
ubuntu@ip-172-31-27-95:/$ ls
bin  boot  dev  etc  home  lib  lib32  lib64  libx32  lost+found  media  mnt  opt  proc  root  run  sbin  snap  srv  sys  tmp  usr  var
ubuntu@ip-172-31-27-95:/$ cd usr
ubuntu@ip-172-31-27-95:/usr$ ls
bin  games  include  lib  lib32  lib64  libexec  libx32  local  sbin  share  src
ubuntu@ip-172-31-27-95:/usr$ find -type f -name "*.py" | grep /t.*.py > ~/les_7_task_1.sh

# результат выполнения команды les_7_task_1.sh прикреплен к заданию


# 2. Из всех файлов с расширением .py, расположенных в домашней директории пользователя ubuntu,
# выбрать строки, содержащие команду print, и вывести их на экран.
# Опять же искал не в рабочей директории, т.к. в ней пусто, а в каталоге /usr
ubuntu@ip-172-31-27-95:/usr$ grep 'print(' -r . --include=*.py >~/les_7task_2.sh

# результат выполнения команды les_7_task_2.sh прикреплен к заданию


# 3.Из результатов работы команды uptime выведите число дней, которое система работает без перезагрузки.
ubuntu@ip-172-31-27-95:/usr$ uptime | sed 's/^.* up //' | sed 's/, *[0-9]* user.*$//'
 2:21



