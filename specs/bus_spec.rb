require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class TestBus < Minitest::Test

  def setup
    @passegers = []
    @passenger1 = Person.new("Dave", 100)
    @passenger2 = Person.new("Sally", 25)  
    @passenger3 = Person.new("Bob", 15)
    @passenger4 = Person.new("Mary", 46)

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

  def test_add_passenger
    @bus.add_passenger(@passenger1)
    assert_equal(@passenger1, @bus.passengers[0])
  end

  def test_remove_passenger
    @bus.add_passenger(@passenger1)
    @bus.remove_passenger
    assert_equal([], @bus.passengers)
  end

  def test_empty_bus
    @bus.empty_bus
    assert_equal(0, @bus.count_passenger)
  end

end