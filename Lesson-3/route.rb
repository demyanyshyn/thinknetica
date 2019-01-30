class Route
attr_reader :station_list, :name

  def initialize(first_station, last_station)
    @name = "#{first_station} - #{last_station}"
    @station_list = [first_station, last_station]
  end

  def add_station(*stations)
    @station_list.insert(-2, stations)
    @station_list.flatten!
  end

  def delete_station(station)
    @station_list.delete(station)
  end
end
