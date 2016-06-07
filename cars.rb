class Vehicle

  def initialize
    @speed = 0
  end

  def wheels
    return @wheel_count
  end

  def moving?
    @speed >= 0
  end

  def accelerate_to(mph)
    @speed = mph
  end

  def speed
    @speed
  end
end

class Bus < Vehicle
  def initialize
    @wheel_count = 14
  end

  def blow_up?
    @speed < 55
  end

end

class Motorcycle < Vehicle

  def initialize
    @wheel_count = 2
  end
end

class Automobile < Vehicle

  def initialize
    @wheel_count = 4
  end
end

class Wreck < Automobile

  def accelerate_to(other)
    puts "NO WAY"
    @speed = 0
  end
end

wreck = Wreck.new
puts "Accelerate to 88"
wreck.accelerate_to(88)
puts wreck.moving?
puts wreck.speed

exit

bike = Motorcycle.new
puts "Bike has #{bike.wheels} wheels"

car = Automobile.new
puts "Car has #{car.wheels} wheels"

car.accelerate_to(88)
puts "Car is moving? #{car.moving?}"
puts "Speed of car: #{car.speed}"

bus = Bus.new
(1..100).each do |mph|
  bus.accelerate_to(mph)
  puts "Bus is going #{bus.speed}. Will it blow up? #{bus.blow_up?}"
end

puts "=================="

puts bus.is_a? Bus
puts "jwo".is_a? Bus
puts bus.is_a? Automobile
puts bus.is_a? Vehicle
