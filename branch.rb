#simple branch
puts "How old are you?"
age = gets.chomp.to_i

if age >= 21
  puts "Come on in"
else
  puts "Sorry. It's twenty-one and up."
end

#write same code calculating age based on today's date

#more practice
puts "What's you're name?"
name = gets.chomp.downcase

if name == "kevin" || "kevin " # this || is incorrect. Use this format -> if ["Yes", "Yes."].include? answer
  puts "Nice name. My name is Kevin also."
  puts "Good to meet you."
else
  puts "Hi " + name + " nice to meet you."
end


#multiple branches
puts "Hello. Welcome to 7th grade English. What's your name?"
name = gets.chomp
if name == name.capitalize
  puts "Welcome " + name + ", take a seat."
else
  puts "Do you mean " + name.capitalize + "? With a capital \"K\"?"
  answer = gets.chomp
  if ["Yes", "Yes."].include? answer
    puts "Good. Take a seat."
  else
    puts "Get out..."
  end
end

#having multiple options in the if statement
# can have: if ["Yes", "Yes."].include? variable
# or: (variable == "kevin" or variable == "kevin ") #This only alows for two options
name = gets.chomp

if (name == "kevin" or name == "kevin ") #can only do two options with "or"
  puts "I have the same name!"
else
  puts "Hi " + name + ". My name is Kevin."
end