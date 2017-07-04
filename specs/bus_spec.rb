require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class TestBus < Minitest::Test

  def setup
    @passegers = []
    @bus = Bus.new(22, "Ocean Terminal")
  end 

  def test_bus_route
    assert_equal(22, @bus.route)
  end 

  def test_bus_noise
    assert_equal("Brum Brum", @bus.noise)
  end 

  def test_count_passenger
    assert_equal(0, @bus.count_passenger)
  end 

  # def test_add_passenger
    
  # end


end