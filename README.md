# Тестовое задание Ruby Backend-разработчика

## Для команды web-разработки [Proektmarketing+1](https://proektmarketing.ru/)


## Условие задачи
> Написать ruby-код, который из 2х рандомных массивов чисел соберет один без повторяющихся значений, отсортированных по возрастанию, и запишет результат в текстовый файл.


## Описание
В данном репозитории находятся 2 скрипта.
- Скрипт script.rb реализует поставленную задачу с использованием возможностей языка Ruby
- Скрипт script2.rb использует общий подход к решению задачи, используя при этом методы, доступные в большинстве современных языков программирования. Также в данном скрипте присутствуют подробные комментарии, которые разъясняют принципы работы каждой инструкции.

## Требования
- Git
- Ruby (^3.0.2)


## Установка
```sh
git clone https://github.com/nunsez/ruby-test-assignment.git
cd ruby-test-assignment
```


## Рабочий процесс
Скрипт подразумевает ввод списков целых чисел произвольной длины, разделенных пробелом \
В 2 строки

Результат работы скрипта выводится в файл output.txt \
Файл будет находиться в директории, из которой был запущен скрипт!

### Способ первый
1. Запустить скрипт командой:
```sh
ruby script.rb
```
2. Ввести список чисел, разделенных пробелом
3. Нажать Enter для подтверждения ввода
4. Вести второй список чисел, разделенных пробелом
5. Нажать Enter для подтверждения ввода

### Способ второй
1. Подготовить заранее файл, с необходимыми входными данными, например:
```
# input.txt:
3 2 1
8 2 3 3
```

2. Запустить скрипт **одной** из 2х команд:
```sh
ruby script.rb < input.txt
cat input.txt | ruby script.rb
```
