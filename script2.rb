# читаем данные из stdin или файла (см. README.md)
# преобразуем данные в массив чисел
arr1 = gets.split.map(&:to_i)
arr2 = gets.split.map(&:to_i)

# Реализация без использования require 'set' \ arr.to_set
# создаём хеш1, хеш2 со значениями массива1, массива2 в виде ключей
# тем самым убираем дубли
set1 = arr1.inject({}) do |memo, item|
    memo[item] = true
    memo
end

set2 = arr2.inject({}) do |memo, item|
    memo[item] = true
    memo
end

# Мержим 2 хеша, получаем массив (множество) интересующих нас ключей
union = set1.merge(set2).keys

# сортируем множество по возрастанию
result = union.sort

# определяем файл для записи в кодировке utf-8
file = File.new('output.txt', 'w:utf-8')

# пишем в файл множество, в виде строки, с разделителем между элементами в виде пробела
file.puts result.join(' ')

# закрываем файл
file.close

# выводим сообщение о том, что программа выполнилась
# прерываем выполнение программы
abort 'Done!'
