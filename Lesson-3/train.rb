class Train
  
  attr_accessor :speed
  attr_reader :wagons, :type, :number, :current_station

  def initialize ( number, type, wagons )
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @route = []
    @current_station = nil
  end

  def stop
    @speed = 0
  end

  def add_wagon
    @wagons += 1 if @speed == 0
  end

  def delete_wagon
    @wagons -= 1 if @speed == 0
  end

  def add_route (route)
    @route = route
    @current_station = @route.station_list[0]
  end

  def move_forward   
    current_position = @route.station_list.index(@current_station) + 1
    max_st = @route.station_list.count

    if current_position < max_st  
      @current_station = @route.station_list[current_position]
    elsif max_st == current_position 
      puts "Движение вперед невозможно! Текущая станция: #{@curent_station}"
    end
  end

  def move_backward
    current_position = @route.station_list.index(@current_station) + 1
    
    if current_position > 1 
      @current_station = @route.station_list[current_position - 2]
    elsif current_position == 1
        puts "Движение назад невозможно! Текущая станция: #{@curent_station}"
    end
  end
  
  def around_stations
    current_position = @route.station_list.index(@current_station) - 1
    around_stations = []
    3.times do 
      if current_position >= 0 
        around_stations << @route.station_list[current_position]
      end
       
       current_position += 1
    end

    around_stations.compact
  end
end
