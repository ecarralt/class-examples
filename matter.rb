class Atom

  def atomic_weight
    @protons + @neutrons
  end

  def electrons
    @protons
  end

  def name
    self.class
  end
end

class Hydrogen < Atom
  def initialize
    @protons = 1
    @neutrons = 0
  end
end

class Helium < Atom
  def initialize
    @protons = 2
    @neutrons = 2
  end
end

[Hydrogen.new, Helium.new].each do |element|
  puts "#{element.name} has weight of #{element.atomic_weight}"
end
