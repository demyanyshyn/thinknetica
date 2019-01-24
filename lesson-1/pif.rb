puts "Введите три стороны треугольника через запятую:"
side = gets.split(",").map(&:to_f)
max_length = side.max
puts max_length.class
if side[0] == side[1] && side[1]== side[2]
	puts "Данный треугольник является равносторонним"	
else
	side.delete(max_length) #удаляем из массива значение гипотенузы
	puts side.class
	if max_length**2 == (side[0]**2 + side[1]**2)   #проверяем теорему Пифагора
		puts "Данный треугольник является прямоугольным, катет:#{max_length}"
		puts "В тоже время он равнобедренный а=#{side[0]} и b=#{side[1]}" if side[0]==side[1] #Сравниваем катеты		
	else 
		puts "Данный треугольник не является прямоугольным"
	end

end
