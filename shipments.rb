require 'csv'
require 'pp'

class ShipmentList
  def initialize(shipments)
    @shipments = shipments
  end

  def group_by_pilot
  end

  def group_by_planet
  end

  def print_report
  end
end

class Shipment

  # set initial value from hash
  def initialize(hash)
    @destination = hash["Destination"]
    @shipment = hash["Shipment"]
    @crates = hash["Crates"]
    @money = hash["Money"].to_i
  end

  attr_accessor :destination, :money, :crates


  # def destination
  #   return @destination
  # end

  # def money
  #   return @money
  # end


  # def crates
  #   @crates
  # end
  # def crates=(crate_number)
  #   @crates = crate_number
  # end

  def pilot
    case @destination
    when 'Earth'
      'Fry'
    when 'Uranus'
      'Bender'
    when 'Mars'
      'Amy'
    else
      'Leela'
    end
  end

end

shipments = []

CSV.foreach("../lab-resources/lab2/planet_express_logs.csv",headers: true) do |row|
  hash = row.to_hash

  shipment = Shipment.new(hash)
  shipments << shipment
end

shipments.each do |shipment|
  shipment.crates = 800
  puts "#{shipment.pilot} piloted #{shipment.crates} to #{shipment.destination} for #{shipment.money}"
end

puts "======================"
puts "Total: #{shipments.map{|s| s.money}.reduce(:+)}"



puts "======================"

grouped = shipments.group_by {|shipment| shipment.destination}

grouped.each do |planet_name, planet_shipments|
  money = planet_shipments.map{|s| s.money}.reduce(:+)
  puts "#{planet_name}: #{planet_shipments.count} for #{money}"
end

puts "======================"
pilot_group = shipments.group_by {|shipment| shipment.pilot}
pilot_group.each do |pilot, pilot_shipments|
  money = pilot_shipments.map{|s| s.money}.reduce(:+)
  puts "#{pilot}: #{pilot_shipments.count} for #{money}"
end

# As one transformation
# shipments
#   .group_by {|shipment| shipment.destination}
#   .each do |planet_name, planet_shipments|
#     money = planet_shipments.map{|s| s.money}.reduce(:+)
#     puts "#{planet_name}: #{planet_shipments.count} for #{money}"
#   end
#
# puts "======================"
# shipments
#   .group_by {|shipment| shipment.pilot}
#   .each do |pilot, pilot_shipments|
#     money = pilot_shipments.map{|s| s.money}.reduce(:+)
#     puts "#{pilot}: #{pilot_shipments.count} for #{money}"
#   end
