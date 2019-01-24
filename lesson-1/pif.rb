puts "Введите три стороны треугольника через запятую:"
side = gets.split(",").map(&:to_f)
max_length = side.max
side.delete(max_length) #удаляем из массива значение гипотенузы
if side.empty?
	puts "Данный треугольник является равносторонним"	
else	
	if max_length**2 == (side[0]**2 + side[1]**2)   #проверяем теорему Пифагора
		puts "Данный треугольник является прямоугольным, катет:#{max_length}"
	else		
		puts "Данный треугольник не является прямоугольным"
		if side.count(side[0] == 2) #Сравниваем катеты
		puts "В тоже время он равнобедренный а=#{side[0]} и b=#{side[1]}"					
		end 		
	end
end