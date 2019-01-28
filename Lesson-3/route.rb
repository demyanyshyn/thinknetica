class Route

  def initialize (first_station, last_station)
    @station_list = [[first_station, last_station],[]]
  end

  def add_station (*stations)
    @station_list[-1] += stations
  end

  def delete_station (station)
    @station_list[-1].delete(station)
  end

  def station_list
    #puts @station_list[0][0]
    #@station_list[-1].each{|list| puts list}
    #puts @station_list[0][-1] 
    #@station_list
    route = [@station_list[0][0]]
    route += @station_list[-1]   # << @route.station_list[0][0] << 
    route << @station_list[0][-1]  
  end
end
