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
array=[10]
i = 0
while array[i] < 100
  array.push(array[i] + 5)
  i += 1
end
print array

array = [1,1]
i = 1
while array[i-1] + array[i]  < 100
  array.push(array[i-1] + array[i])
  i += 1
end
print array

letters=Hash.new
i=1
a = ('a'..'z').to_a
a.each do |s|
  letters[s] = i
  i +=1  
end
puts letters