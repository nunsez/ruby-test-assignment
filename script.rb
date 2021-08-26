arr1 = gets.split.map(&:to_i)
arr2 = gets.split.map(&:to_i)

result = (arr1 | arr2).sort

file = File.new('output.txt', 'w:utf-8')
file.puts result.join(' ')
file.close
