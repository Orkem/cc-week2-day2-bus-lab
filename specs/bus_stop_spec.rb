require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class TestBusStop < Minitest::Test

  def setup
   @passenger1 = Person.new("Dave", 100)
   @passenger2 = Person.new("Sally", 25)  
   @passenger3 = Person.new("Bob", 15)
   @passenger4 = Person.new("Mary", 46)

   @bus = Bus.new(22, "Ocean Terminal")
   @bus_stop1 = BusStop.new("Leith")
  end

  def test_add_person_to_queue()
    @bus_stop1.add_person_to_queue(@passenger1)
    assert_equal(@passenger1, @bus_stop1.queue[0])
  end
end