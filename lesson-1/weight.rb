puts "Введите Ваше имя"
user_name = gets.chomp
puts "Ваш рост?"
ideal_weight = -110 + weight= gets.chomp.to_i 
puts "#{user_name}, Ваш идеальный вес #{ideal_weight}!" if ideal_weight > 0
puts "#{user_name}, Ваш вес идеален!" if ideal_weight == 0
puts "Уважаемый #{user_name}, Вам бы подрасти на #{ideal_height = ideal_weight.abs.to_f} cm!" if ideal_weight < 0
