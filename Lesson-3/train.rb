class Train
  
  attr_accessor :speed
  attr_reader :wagons, :type, :number, :current_position

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @current_position = 0
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

  def add_route(route)
    @route = route
    @current_position = 0
    current_station.get_train(self)
  end

  def move_forward
    if next_station
      current_station.give_train(self)
      next_station.get_train(self)
      @current_position += 1
    else
      puts "Движение вперед невозможно! Текущая станция: #{@curent_station}"
    end
  end

  def move_backward
    if previous_station 
      curent_station.give_traine(self)
      previous_station.get_traine(self)
      @current_position -= 1
    else
      puts "Движение назад невозможно! Текущая станция: #{@curent_station}"
    end
  end
  
  def current_station
    return unless @route
    @route.station_list[@current_position]
  end

  def next_station
    return unless @route
    @route.station_list[@current_position + 1]
  end

  def previous_station
    return unless @route && @current_position > 0
    @route.station_list[@current_position - 1]
  end
end
