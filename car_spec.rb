require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('car')
require_relative('person')

class TestCar < Minitest::Test

  def setup
    @car1 = Car.new('Blue', 'Aston Martin', @driver1)
    @driver1 = Person.new('Gregor', 25)
    @passanger1 = Person.new('Jim', 30)
    @passanger2 = Person.new('Bob', 20)
  end

  def test_return_speed
    assert_equal(0, @car1.speed)
  end

  def test_return_fuel_level
    assert_equal(100, @car1.fuel_level)
  end

  def test_accelerate
    @car1.accelerate
    assert_equal(95, @car1.return_fuel_level)
    assert_equal(10, @car1.return_speed)
  end

  def test_brake__still_going
    2.times {@car1.accelerate}
    @car1.brake
    assert_equal(10, @car1.return_speed)
  end

  def test_brake__stopped
    @car1.brake
    assert_equal(0, @car1.return_speed)
  end

def test_add_driver
  result = @car1.add_driver(@driver1)
  assert_equal(@driver1, result)
end

  def test_pick_up_passanger
    result = @car1.pick_up_passanger(@passanger1)
    assert_equal(@passanger1, result)
  end  

  def test_passanger_count__no_passanger
    assert_equal(0, @car1.passanger_count)
  end

  def test_passanger_count__two_passanger
    @car1.pick_up_passanger(@passanger1)
    @car1.pick_up_passanger(@passanger2)
    assert_equal(2, @car1.passanger_count)
  end
end