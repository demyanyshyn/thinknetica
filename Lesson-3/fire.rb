load "./station.rb"
load "./route.rb"
load "./train.rb"
odessa = Station.new ("Odessa golovna")
puts odessa.name

route1 = Route.new "Odessa", "Kiev"
route1.add_station "Zhmerinka", "to-se"
route1.station_list

train1 = Train.new "Poezd nomer", "pass", 25
train1.add_route route1
train1.move_train "fwd"
puts train1.arround_stations
