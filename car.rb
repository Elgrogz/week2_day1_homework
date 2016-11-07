require('pry-byebug')

class Car
  attr_accessor :colour, :model
  attr_reader :fuel_level, :speed, :name, :age

  def initialize(colour, model, driver)
    @colour = colour
    @model = model
    @fuel_level = 100
    @speed = 0
    #add driver property to car? not sure if this is what i was meant to do! I think a hash would be better but not sure how to add a hash from a 'person' object
    @driver = []
    @passangers = [] 
  end

  def return_speed
    return @speed
  end

  def return_fuel_level
    return @fuel_level
  end

  def accelerate
    @fuel_level -= 5
    @speed += 10
  end 

  def brake
    if @speed <= 10
      @speed = 0
    else
      @speed -= 10
    end
  end

  def add_driver(driver)
    @driver.push(driver)
    return driver
  end

  def pick_up_passanger(passanger)
    @passangers.push(passanger)
    return passanger
  end

  def passanger_count
    return @passangers.length
  end
end