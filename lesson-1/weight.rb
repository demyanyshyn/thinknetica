puts "Введите Ваше имя"
user_name = gets.chomp
puts "Ваш рост?"
weight= gets.to_f
ideal_weight = -110 + weight
ideal_height = ideal_weight.abs
puts "#{user_name}, Ваш идеальный вес #{ideal_weight}!" if ideal_weight > 0
puts "#{user_name}, Ваш вес идеален!" if ideal_weight == 0
if ideal_weight < 0
  puts "Уважаемый #{user_name}, Вам бы подрасти на #{ideal_height} cm!" 
end
