# def format_name(first_name, last_name)
#   [last_name, first_name].join(", ")
# end

class Person

  def format_name()

    first_name = the_hash[:first]
    last_name = the_hash[:last]
    format_chosen = the_hash[:format_preferred]

    if format_chosen == "f"
      "#{first_name} #{last_name}"
    else
      [last_name, first_name].join(", ")
    end
  end

end



# instantiated an object of class (type) hash
person = Person.new

person_hash = {}
# person = Hash.new
# rock   = Hash.new

puts "First Name?"
person_hash[:first] = gets.chomp

puts "Last Name?"
person_hash[:last] = gets.chomp

puts "Phone Number?"
person_hash[:phone] = gets.chomp

puts "Which format? First Last (f) or Last, First (l)"
person_hash[:format_preferred] = gets.chomp.downcase

# puts format_name person
puts person.format_name()

print person
