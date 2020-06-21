# Начало работы в терминале над домашним заданием к 3-му уроку
ubuntu@ip-172-31-27-165:~$ mkdir lesson_3
ubuntu@ip-172-31-27-165:~$ ls
lesson_3
ubuntu@ip-172-31-27-165:~$ cd lesson_3

# 1. Создание с помощью текстового редактора Vim создать файл с программой на Python, 
# выводящей текст Hello, world!
ubuntu@ip-172-31-27-165:~/lesson_3$ vim les_3_task_1.py

# Для проверки того, что в вим был создан файл нужно смотреть скриншот les_3_task_1_in_vim.JPG

ubuntu@ip-172-31-27-165:~/lesson_3$ cat les_3_task_1.py
print('Hello world!')

# 2. Запустить команду, определяющую число строк в файле. Но предварительно свериться с мануалом. Т.к. опыта мало.
ubuntu@ip-172-31-27-165:~/lesson_3$ man wc
ubuntu@ip-172-31-27-165:~/lesson_3$ wc -l les_3_task_1.py
1 les_3_task_1.py

# 3. Создать еще один файл с командой на Python, выводящей текст Linear regression.
# Опять задействуем vim
ubuntu@ip-172-31-27-165:~/lesson_3$ vim les_3_task_3.py

# Для проверки того, что в вим был создан файл нужно смотреть скриншот les_3_task_3_in_vim.JPG

ubuntu@ip-172-31-27-165:~/lesson_3$ cat les_3_task_3.py
print('Linear regression.')

# 4. Объединить эти два файла с помощью команды cat.
ubuntu@ip-172-31-27-165:~/lesson_3$ cat les_3_task_1.py les_3_task_3.py > les_3_task_4.py
ubuntu@ip-172-31-27-165:~/lesson_3$ cat les_3_task_4.py
print('Hello world!')
print('Linear regression.')

# 5. Придумать три случая применения команды cat для работы с текстовыми файлами.

# Создание небольшой программы на python
ubuntu@ip-172-31-27-165:~/lesson_3$ vim les_3_task_5.py
# Проверка, что программа записалась. Пустые строки в ней нужны для проверки работы функции cat
ubuntu@ip-172-31-27-165:~/lesson_3$ cat les_3_task_5.py
list_of_products = ['Молоко', 'Хлеб', 'Курица', 'Картофель', 'Сало']

print('Список покупок:')

list(map(print, list_of_products))

print('Хорошего дня!')

# Пронумеруем все строки
ubuntu@ip-172-31-27-165:~/lesson_3$ cat -n les_3_task_5.py
     1  list_of_products = ['Молоко', 'Хлеб', 'Курица', 'Картофель', 'Сало']
     2
     3  print('Список покупок:')
     4
     5  list(map(print, list_of_products))
     6
     7  print('Хорошего дня!')
	 
# Пронумеруем не пустые строки	 
ubuntu@ip-172-31-27-165:~/lesson_3$ cat -b les_3_task_5.py
     1  list_of_products = ['Молоко', 'Хлеб', 'Курица', 'Картофель', 'Сало']

     2  print('Список покупок:')

     3  list(map(print, list_of_products))

     4  print('Хорошего дня!')

# Пронумеруем все строки и выведем символа $ в конце каждой строки	 
ubuntu@ip-172-31-27-165:~/lesson_3$ cat -n -E les_3_task_5.py
     1  list_of_products = ['Молоко', 'Хлеб', 'Курица', 'Картофель', 'Сало']$
     2  $
     3  print('Список покупок:')$
     4  $
     5  list(map(print, list_of_products))$
     6  $
     7  print('Хорошего дня!')$
	 
# Вывод всех непечатных символов	 
ubuntu@ip-172-31-27-165:~/lesson_3$ cat -A les_3_task_5.py
list_of_products = ['M-PM-^\M-PM->M-PM-;M-PM->M-PM-:M-PM->', 'M-PM-%M-PM-;M-PM-5M-PM-1', 'M-PM-^ZM-QM-^CM-QM-^@M-PM-8M-QM-^FM-PM-0', 'M-PM-^ZM-PM-0M-QM-^@M-QM-^BM-PM->M-QM-^DM-PM-5M-PM-;M-QM-^L', 'M-PM-!M-PM-0M-PM-;M-PM->']$
$
print('M-PM-!M-PM-?M-PM-8M-QM-^AM-PM->M-PM-: M-PM-?M-PM->M-PM-:M-QM-^CM-PM-?M-PM->M-PM-::')$
$
list(map(print, list_of_products))$
$
print('M-PM-%M-PM->M-QM-^@M-PM->M-QM-^HM-PM-5M-PM-3M-PM-> M-PM-4M-PM-=M-QM-^O!')$

# Добавление к файлу les_3_task_5.py данных из les_3_task_1.py и les_3_task_3.py
ubuntu@ip-172-31-27-165:~/lesson_3$ cat les_3_task_1.py les_3_task_3.py >> les_3_task_5.py

# Проверка последнего действия
ubuntu@ip-172-31-27-165:~/lesson_3$ cat les_3_task_5.py
list_of_products = ['Молоко', 'Хлеб', 'Курица', 'Картофель', 'Сало']

print('Список покупок:')

list(map(print, list_of_products))

print('Хорошего дня!')
print('Hello world!')
print('Linear regression.')

# Удаление всех файлов и каталога lesson_3 для очистки места и приведения рабочего каталога в порядок.
ubuntu@ip-172-31-27-165:~/lesson_3$ cd ..
ubuntu@ip-172-31-27-165:~$ rm -r lesson_3/
ubuntu@ip-172-31-27-165:~$ ls
ubuntu@ip-172-31-27-165:~$

