class Route
attr_reader :station_list, :name

  def initialize(first_station, last_station)
    @name = "#{first_station.name} - #{last_station.name}"
    @station_list = [first_station, last_station]
  end

  def add_station(*stations)
    @station_list.insert(-2, stations)
    @station_list.flatten!
  end

  def delete_station(station)
    @station_list.delete(station)
  end

  def station_names
    @station_names = []
    index = 0
    x = station_list.size
    x.times{@station_names << @station_list[index].name && index += 1}
    @station_names 
  end

end
