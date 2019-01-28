class Train
  
  attr_accessor :speed
  attr_reader :wagons

  def initialize ( number, type, wagons )
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
    @wagon += 1 if @speed == 0 && operation == "add"
    @wagon -= 1 if @speed == 0 && operation == "get"
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
          puts "Движение вперед невозможно!"
      end
    end

    if way.upcase == "BCK"
      if current_position > 1 
        @curent_station = @route.station_list[current_position - 2]
      elsif current_position == 1
          puts "Движение назад невозможно!"
      end
    end
  end

  def arround_stations
    current_position = @route.station_list.index(@curent_station) - 2
    
    3.times do |x|
      current_position += 1
      @route.station_list[current_position]
      puts @route.station_list[current_position]
    end
  end


end
