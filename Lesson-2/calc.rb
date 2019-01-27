calc = Hash.new 
loop do |x|
  puts "Введите Название товара:"
  names = gets.chomp
break if names.upcase == "СТОП"
  puts "Введите цену:" 
  price = gets.to_f
  puts "Введите количество товара:"
  num = gets.to_f
  calc[names] = Hash.new
  calc[names][price] = num
end 
key = calc.keys.to_a
sum = 0
calc.each_pair do |name, val|  
  print name
  val.each_pair do |x, y|
    sum +=x*y 
    puts " цена #{x} количество #{y}"      
  end
end
puts "Всего в Корзине на сумму: #{sum}"
