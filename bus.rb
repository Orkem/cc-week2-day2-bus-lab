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
end
