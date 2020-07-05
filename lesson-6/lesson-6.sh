# Начало работы в терминале над домашним заданием к 5-му уроку
ubuntu@ip-172-31-40-124:~$ pwd
/home/ubuntu
ubuntu@ip-172-31-40-124:~$ mkdir lesson_6
ubuntu@ip-172-31-40-124:~$ cd lesson_6/
ubuntu@ip-172-31-40-124:~/lesson_6$ ls


# 1. Создать AMI на основе имеющегося у вас инстанса.
# проверил, что пакет mc по-умолчанию в инстансе не установлен.
ubuntu@ip-172-31-40-124:~/lesson_6$ mc

Command 'mc' not found, but can be installed with:

sudo apt install mc

# установил пакет mc.

ubuntu@ip-172-31-40-124:~/lesson_6$ sudo apt-get install mc
Reading package lists... Done
Building dependency tree
...
Processing triggers for man-db (2.9.1-1) ...
Processing triggers for mime-support (3.64ubuntu1) ...
Processing triggers for libc-bin (2.31-0ubuntu9) ...
ubuntu@ip-172-31-40-124:~/lesson_6$ mc
# скриншот с результатом выполнения команды les_6_task_1_1.jpg прикреплен к заданию

# Через интерфейс AWS создал AMI. скриншот с результатом выполнения команды les_6_task_1_2.jpg прикреплен к заданию


# 2.Создать новый инстанс на основе AMI, сделанного в предыдущем задании. Проверить, присутствуют ли на новом инстансе программы, 
# установленные на исходном инстансе.

# "Убил" инстанс. И восстановил новый из AMI.
# скриншот с видом 2-х иснстансов les_6_task_2_1.jpg прикреплен к заданию
ubuntu@ip-172-31-35-31:~$ mc
# Стандартно не устанавливаемый пакет mc оказался установленным и mc запустился
# скриншот с результатом выполнения команды les_6_task_2_2.jpg прикреплен к заданию

# 3. Добавить новый диск к используемому инстансу. Проверить доступ к этому диску и создать на нем текстовый файл test.txt, 
# содержащий слово test. Затем создать новый инстанс, отсоединить диск от старого и подсоединить к новому. 
# Проверить наличие на диске файла test.txt и просмотреть его в текстовом редакторе nano.

# скриншот с результатом создания нового volume через сервис AWS les_6_task_3_1.jpg прикреплен к заданию

# подключил диск к своему инстансу

ubuntu@ip-172-31-35-31:~$ lsblk
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
loop0     7:0    0   18M  1 loop /snap/amazon-ssm-agent/1566
loop1     7:1    0   97M  1 loop /snap/core/9289
loop2     7:2    0   55M  1 loop /snap/core18/1754
loop3     7:3    0 69.3M  1 loop /snap/lxd/15457
xvda    202:0    0    8G  0 disk
└─xvda1 202:1    0    8G  0 part /
xvdf    202:80   0    1G  0 disk

ubuntu@ip-172-31-35-31:~$ sudo file -s /dev/xvdf
/dev/xvdf: data
ubuntu@ip-172-31-35-31:~$ sudo mkfs -t xfs /dev/xvdf
meta-data=/dev/xvdf              isize=512    agcount=4, agsize=65536 blks
         =                       sectsz=512   attr=2, projid32bit=1
         =                       crc=1        finobt=1, sparse=1, rmapbt=0
         =                       reflink=1
data     =                       bsize=4096   blocks=262144, imaxpct=25
         =                       sunit=0      swidth=0 blks
naming   =version 2              bsize=4096   ascii-ci=0, ftype=1
log      =internal log           bsize=4096   blocks=2560, version=2
         =                       sectsz=512   sunit=0 blks, lazy-count=1
realtime =none                   extsz=4096   blocks=0, rtextents=0

ubuntu@ip-172-31-35-31:~$ df
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/root        8065444 1483388   6565672  19% /
devtmpfs          488748       0    488748   0% /dev
tmpfs             501048       0    501048   0% /dev/shm
tmpfs             100212     776     99436   1% /run
tmpfs               5120       0      5120   0% /run/lock
tmpfs             501048       0    501048   0% /sys/fs/cgroup
/dev/loop0         18432   18432         0 100% /snap/amazon-ssm-agent/1566
/dev/loop2         56320   56320         0 100% /snap/core18/1754
/dev/loop1         99456   99456         0 100% /snap/core/9289
/dev/loop3         71040   71040         0 100% /snap/lxd/15457
tmpfs             100208       0    100208   0% /run/user/1000

ubuntu@ip-172-31-35-31:~$ cd ..
ubuntu@ip-172-31-35-31:/home$ cd ..
ubuntu@ip-172-31-35-31:/$ cd ..
ubuntu@ip-172-31-35-31:/$ ls
bin  boot  dev  etc  home  lib  lib32  lib64  libx32  lost+found  media  mnt  opt  proc  root  run  sbin  snap  srv  sys  tmp  usr  var
ubuntu@ip-172-31-35-31:/$ sudo mkdir /data
ubuntu@ip-172-31-35-31:/$ ls
bin  boot  data  dev  etc  home  lib  lib32  lib64  libx32  lost+found  media  mnt  opt  proc  root  run  sbin  snap  srv  sys  tmp  usr  var
ubuntu@ip-172-31-35-31:/$ sudo mount /dev/xvdf /data
ubuntu@ip-172-31-35-31:/$ cd /data
ubuntu@ip-172-31-35-31:/data$ ls -ls
total 0

# Добавил права на запись данных на новый диск
ubuntu@ip-172-31-35-31:/data$ sudo chmod o+w /data
ubuntu@ip-172-31-35-31:/data$ ls -la
total 4
drwxr-xrwx  2 root root    6 Jul  1 15:55 .
drwxr-xr-x 20 root root 4096 Jul  1 15:59 ..

# Создал файл согласно заданию
ubuntu@ip-172-31-35-31:/data$ echo test > test.txt
ubuntu@ip-172-31-35-31:/data$ ls
test.txt
ubuntu@ip-172-31-35-31:/data$ cat test.txt
test

# отключение диска от системы
sudo umount /data

# запустил второй инстанс. Результат на скриншоте les_6_task_3_2.jpg
# переподключил volume к новому инстансу

# На новом инстансе выполнил следующие команды

ubuntu@ip-172-31-46-148:~$ lsblk
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
loop0     7:0    0   97M  1 loop /snap/core/9289
loop1     7:1    0   55M  1 loop /snap/core18/1754
loop2     7:2    0 69.3M  1 loop /snap/lxd/15457
loop3     7:3    0   18M  1 loop /snap/amazon-ssm-agent/1566
xvda    202:0    0    8G  0 disk
└─xvda1 202:1    0    8G  0 part /
xvdf    202:80   0    1G  0 disk
ubuntu@ip-172-31-46-148:~$ cd ..
ubuntu@ip-172-31-46-148:/home$ cd ..
ubuntu@ip-172-31-46-148:/$ cd ..
ubuntu@ip-172-31-46-148:/$ ls
bin   dev  home  lib32  libx32      media  opt   root  sbin  srv  tmp  var
boot  etc  lib   lib64  lost+found  mnt    proc  run   snap  sys  usr
ubuntu@ip-172-31-46-148:/$ sudo mkdir /data
ubuntu@ip-172-31-46-148:/$ ls
bin   data  etc   lib    lib64   lost+found  mnt  proc  run   snap  sys  usr
boot  dev   home  lib32  libx32  media       opt  root  sbin  srv   tmp  var
ubuntu@ip-172-31-46-148:/$ sudo mount /dev/xvdf /data
ubuntu@ip-172-31-46-148:/$ cd /data
ubuntu@ip-172-31-46-148:/data$ ls
test.txt
ubuntu@ip-172-31-46-148:/data$ cat test.txt
test
# файл есть. Данные в нем есть.

ubuntu@ip-172-31-46-148:/data$ nano test.txt
# Открыл файл через nano. Результат на скриншоте les_6_task_3_3.jpg


