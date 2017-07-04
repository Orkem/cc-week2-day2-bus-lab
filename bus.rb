class Bus

  attr_reader :route, :destination, :passengers

  def initialize (route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end 

  def noise
    return "Brum Brum"
  end 

  def count_passenger
    @passengers.count 
  end

  def add_passenger(passenger)
    @passengers << passenger 
  end

  def remove_passenger
    @passengers.shift
  end

  def empty_bus
    @passengers.clear
  end 

end
