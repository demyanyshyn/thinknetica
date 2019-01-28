load "./station.rb"
load "./route.rb"
load "./train.rb"
odessa = Station.new ("Odessa golovna")
puts odessa.name

route1 = Route.new "Odessa", "Kiev"
route1.add_station "Zhmerinka", "Nikolaev", "Dnepr"
route1.station_list


train1 = Train.new "Poezd nomer 1", "pass", 25
train2 = Train.new "Poezd nomer 2", "pass", 22
train1.add_route route1
#train1.move_train "fwd"
#train1.move_train "fwd"
#train1.move_train "fwd"
#train1.move_train "fwd"
#train1.move_train "fwd"
puts train1.around_stations

odessa.get_train(train1)
odessa.get_train(train2)

train1.move_wagons "add"
puts odessa.train_list_by_type("pass")
puts train1.wagons

route1.delete_station ("Zhmerinka")
puts route1.station_list
