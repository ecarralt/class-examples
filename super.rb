class SuperHero
  def initialize
    puts "YAY"
  end

  def superpowers
    ["fight evil", "cape"]
  end
end

class Batman < SuperHero

  def initialize
    puts "I'm RIIIIIICH"
    super # calls the initialize method on the superclass
  end

  def superpowers
    ["wealthy parents"] + super
  end
end

class Superman < SuperHero
  def initialize
    puts "I'm not human"
    super # calls the initialize method on the superclass
  end

  def superpowers
    ["x-ray vision", "strength", "flying", "annoying", "Comfortable in a speedo"] + super
  end
end

puts
puts "================="
puts "Creating SuperHero"
h = SuperHero.new
puts h.superpowers.inspect
#
puts
puts "================="
puts "Creating Batman"
b = Batman.new
puts b.superpowers.inspect
#
puts
puts "================="
puts "Creating Superman"
s = Superman.new
puts s.superpowers.inspect
