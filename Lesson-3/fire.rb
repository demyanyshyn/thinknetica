load "./station.rb"
load "./route.rb"
load "./train.rb"

odessa = Station.new("Odessa")
nikolaev = Station.new("Nikolaev")
dnepr = Station.new("Днепр")
zhmerinka = Station.new("Жмеринка")
kiev = Station.new("Киев")


puts odessa.name

route1 = Route.new(odessa, kiev)
puts route1.station_names
route1.add_station(zhmerinka, nikolaev, dnepr)

train1 = Train.new "Poezd nomer 1", :pass, 25
train2 = Train.new "Poezd nomer 2", :pass, 22
train3 = Train.new "Poezd nomer 3", :cargo, 22

train1.add_route(route1)

train1.move_forward 
train1.move_forward 
train1.move_forward 
train1.move_forward 

puts "Полный список станций маршрута #{route1.name}: #{route1.station_names}"
puts "Текущая станция #{train1.current_station.name}, предыдущая: #{train1.previous_station.name}"

odessa.get_train(train3)
odessa.get_train(train2)

train1.add_wagon
puts "Список поездов на станции #{odessa.name}:#{odessa.train_list_by_type(:pass)} "
puts "Количество вагонов у поезда #{train1.number}: #{train1.wagons}"

route1.delete_station(zhmerinka)
puts "Полный список станций маршрута #{route1.name}: #{route1.station_names}"
