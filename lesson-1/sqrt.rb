puts "Введите а="
a = gets.to_f
puts "Введите b="
b = gets.to_f
puts "Введите c="
c = gets.to_f
d = b**2 + (4 * a * c)
if d >0
  d2 = Math.sqrt(d)
  x = (-1 * b) + d2 /(2 * a)
  y = (-1 * b) - d2 /(2 * a)
  puts "Дискриминант равен: #{d}; х = #{x}; y = #{y}" 
elsif d == 0 
  x = -2 * a * b 
  puts "Дискриминант равен: #{d}; x = y = #{x}" 
elsif d<0
puts "Дискриминант равен: #{d}; Корней нет" 
end
