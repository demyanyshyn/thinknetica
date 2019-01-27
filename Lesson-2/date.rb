puts "Введите число:"
date = gets.chomp.to_i
puts "Введите месяц:"
month = gets.chomp.to_i
puts "Введите год:"
year = gets.to_f
february = year % 400 == 0 || ( year % 4 == 0 && year % 100 != 0 ) ? -1 : -2
a = ( month - 1 ) * 30 + month / 2 + date + february
puts "Порядковый номер указанной даты: #{a}"
