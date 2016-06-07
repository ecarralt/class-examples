class Wizard

  attr_accessor :name, :spell

  # def name
  #   return @name
  # end
  #
  # def name=(other)
  #   @name = other
  # end
  #
  # def spell
  #   return @spell
  # end
  #
  # def spell=(other)
  #   @spell = other
  # end

  def enchant(target)
    puts "#{name} casts #{spell} on #{target.name}!"
  end
end

gandolf = Wizard.new
gandolf.name = "Gandalf"
gandolf.spell = "You shall not pass"

harry = Wizard.new
harry.name = "Harry Potter"
harry.spell = "expelliarmus"

jwo = Wizard.new
jwo.name = "JWo"
jwo.spell = "💩💩💩"

jwo.enchant(gandolf)
# Harry Potter casts Expelliamos on Gandolf!
