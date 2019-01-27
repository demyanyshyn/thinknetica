calc = Hash.new 
loop do |x|
  puts "Введите Название товара:"
  name = gets.chomp
break if name.upcase == "СТОП"
  puts "Введите цену:" 
  price = gets.to_f
  puts "Введите количество товара:"
  num = gets.to_f
  calc[name] = {price => num}
end 
key = calc.keys.to_a
sum = 0
calc.each_pair do |name, val|  
  print name
  val.each_pair do |x, y|
    sum += x * y 
    puts " цена #{x} количество #{y}"      
  end
end
puts "Всего в Корзине на сумму: #{sum}"
