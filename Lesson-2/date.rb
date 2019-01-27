puts "Введите число:"
date = gets.chomp.to_i
puts "Введите месяц:"
month = gets.chomp.to_i
puts "Введите год:"
year = gets.to_f
f29 = -2
if year % 400 == 0 
  f29 = -1
elsif year % 4 == 0 
  f29 = -1
  if year % 100 == 0
    f29 = -2
  end
end
a = (month-1)*30 + month/2 + date + f29
puts "Порядковый номер указанной даты: #{a}"
