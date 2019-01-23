puts "Введите а="
a = gets.to_f
puts "Введите b="
b = gets.to_f
puts "Введите c="
c = gets.to_f
D = b**2 + (4 * a * c)
puts "Дискриминант равен: #{D}; х = #{((-1 * b) + Math.sqrt(D)/(2 * a))}; y = #{((-1 * b) - Math.sqrt(D)/(2 * a))}" if D >0 
puts "Дискриминант равен: #{D}; x = y = #{-2 * a * b}" if D == 0
puts "Дискриминант равен: #{D}; Корней нет" if D < 0