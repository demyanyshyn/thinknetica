class Train
  
  attr_accessor :speed
  attr_reader :wagons, :type, :name

  def initialize ( number, type, wagons ) # Не нашёл способ задать переменную type так, чтоб она могла принимать только 2 значения из заданных
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @route = []
    @curent_station = ""
  end

  def stop
    @speed = 0
  end

  def move_wagons (operation)
    @wagons += 1 if @speed == 0 && operation == "add"
    @wagons -= 1 if @speed == 0 && operation == "get"
  end

  def add_route (route)
    @route = route
    @curent_station = @route.station_list[0]
  end

  def move_train (way)   
    current_position = @route.station_list.index(@curent_station) + 1
    max_st = @route.station_list.count

    if way.upcase == "FWD"
      if current_position < max_st  
        @curent_station = @route.station_list[current_position]
      elsif max_st == current_position 
          puts "Движение вперед невозможно! Текущая станция: #{@curent_station}"
      end
    end

    if way.upcase == "BCK"
      if current_position > 1 
        @curent_station = @route.station_list[current_position - 2]
      elsif current_position == 1
          puts "Движение назад невозможно! Текущая станция: #{@curent_station}"
      end
    end
  end

  def around_stations
    around_stations = []
    station_list = @route.station_list
    current_position = station_list.index(@curent_station) - 1
    current_position = 0 if current_position < 0 
    target = station_list.index(@curent_station) + 2
    
    if current_position == station_list.size - 1
      current_position = station_list.lenghth -1
      target -= 1
    end 
    
    while current_position != target
      around_stations << @route.station_list[current_position]
      current_position += 1
    end

    around_stations
  end
end
