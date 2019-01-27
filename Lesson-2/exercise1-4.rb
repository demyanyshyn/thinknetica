# Задание 1
month = {
  "January" => 31,
  "February"=> 28,
  "March" => 31,
  "April"=> 30,
  "May"=> 31,
  "June"=> 30,
  "July"=> 31,
  "August"=> 30,
  "September"=> 31,
  "October"=> 30,
  "November"=> 31,
  "December"=> 30
}
month.each { |e, x| puts e if x == 30 } 

#Задание 2
array=[10]
while array[-1] < 100
  array.push(array[-1] + 5)
end
print array

#Задание 3
array = [1,1]
while array[-2] + array[-1] < 100
  array.push(array[-2] + array[-1])
end
print array

#Задание 4
letters_hash={}
#i = 1
letters_array = ('a'..'z').to_a
letters_array.each_with_index {|item, index| letters_hash[item] = index}
puts letters
