puts "Введите Ваше имя"
user_name = gets.chomp
puts "Ваш рост?"
ideal_weight = -110 + weight= gets.chomp.to_i 
puts "#{name}, Ваш идеальный вес #{ideal_weight}! "if ideal_weight > 0
puts "#{name}, Ваш вес идеален!" if ideal_weight == 0
puts "Уважаемый #{name}, Вам бы подрасти на #{ideal_height = ideal_weight.abs.to_f} cm!" if ideal_weight < 0
