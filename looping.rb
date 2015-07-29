#looping 
command = ""
while command != "bye"
  puts "What do you want?"
  command = gets.chomp
end

puts "See you later"


#make a coin clip app that doen't quit until I win.
result = " "
guess = ""

while guess != result

  puts "Heads or Tails?"
  guess = gets.chomp.downcase

  if guess == "heads"
    guess = 0
  end

  if guess == "tails"
    guess = 1
  end

  result = rand(2)
end

puts "I win!"