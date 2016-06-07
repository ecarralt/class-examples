# def format_name(first_name, last_name)
#   [last_name, first_name].join(", ")
# end

def format_name(person)

  if person[:format_preferred] == "f"
    "#{person[:first]} #{person[:last]}"
  else
    [person[:last], person[:first]].join(", ")
  end
end

person = {}

puts "First Name?"
person[:first] = gets.chomp

puts "Last Name?"
person[:last] = gets.chomp

puts "Phone Number?"
person[:phone] = gets.chomp

puts "Which format? First Last (f) or Last, First (l)"
person[:format_preferred] = gets.chomp.downcase

puts format_name person

print person
