# Читаем данные из stdin или файла (см. README.md п.Рабочий процесс)
# Преобразуем данные в массив чисел
arr1 = gets.split.map(&:to_i)
arr2 = gets.split.map(&:to_i)

# Реализация без использования require 'set' \ arr.to_set
# Создаём хеш1, хеш2 со значениями массива1, массива2 в виде ключей,
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

# Сортируем множество по возрастанию
result = union.sort

# Определяем файл для записи в кодировке utf-8
file = File.new('output.txt', 'w:utf-8')

# Пишем в файл множество, в виде строки с разделителем между элементами в виде пробела
file.puts result.join(' ')

# Закрываем файл
file.close

# Выводим сообщение о том, что программа выполнилась
# Прерываем выполнение программы
abort 'Done!'
