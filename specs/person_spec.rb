require('minitest/autorun')
require_relative('../bus.rb')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class TestPerson < Minitest::Test

  def test_name
    person = Person.new("Stephen", 80)
    assert_equal("Stephen", person.name)
  end 


  def test_age
    person = Person.new("Stephen", 80)
    assert_equal(80, person.age)
  end 

end